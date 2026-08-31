# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import allo
from allo.ir.types import Stream
import allo.dataflow as df
from allo.memory import Layout

S = Layout.Shard


def gen_atb_gemm_mapping_primitive(Pm, Pn, Pk, col_num=4, row_num=2):
    # chain on k dimension
    mapping_primitives = []
    bases: list[list[str]] = []
    for i in range(Pm):
        bases.append([])
        for j in range(Pn):
            base = f"gemm_0_{i}_{j}"
            for k in range(1, Pk):
                mapping_primitives.append(("chain", [base, f"gemm_{k}_{i}_{j}"]))
                base += f"-gemm_{k}_{i}_{j}"
            bases[i].append(base)

    # The A loader does not depend on pn. First bundle its K instances, which
    # all feed the same K-chained GEMM nodes for a given pm.
    load_a_bases = []
    for i in range(Pm):
        base = f"load_a_0_{i}"
        if Pk > 1:
            mapping_primitives.append(
                ("bundle", [f"load_a_{k}_{i}" for k in range(Pk)])
            )
            base += f"x{Pk}"
        load_a_bases.append(base)

    if Pn // col_num < 1 or Pm // row_num < 1:
        col_num, row_num = row_num, col_num
    if Pn < col_num:
        col_num = Pn
    if Pm < row_num:
        row_num = Pm
    # Bundle along M first. Each group includes its A loader and all of its
    # GEMM consumers so the producer/consumer stream patterns stay isomorphic.
    pm_bundle = Pm // row_num
    if pm_bundle > 1:
        for i in range(row_num):
            bundle_list = []
            for p in range(pm_bundle):
                pm = i + row_num * p
                bundle_list.append(tuple([load_a_bases[pm]] + bases[pm]))
            mapping_primitives.append(("bundle", bundle_list))
            load_a_bases[i] += f"x{pm_bundle}"
            for j in range(Pn):
                bases[i][j] += f"x{pm_bundle}"

    # Preserve the existing GEMM bundling along N. The A loader is already
    # shared by every pn consumer, so it must not be repeated in these groups.
    pn_bundle = Pn // col_num
    if pn_bundle > 1:
        for i in range(row_num):
            for j in range(col_num):
                bundle_list = []
                for q in range(pn_bundle):
                    bundle_list.append(bases[i][j + col_num * q])
                mapping_primitives.append(("bundle", bundle_list))
                bases[i][j] += f"x{pn_bundle}"

    return mapping_primitives




def ATB_GEMM(M, N, K, Pm, Pn, Pk, TyI, TyO, col_num=4, row_num=2):
    rho = 2
    Mt, Nt, Kt = M // Pm, N // Pn, K // Pk
    assert Mt % rho == 0
    At = Mt // rho

    LyA = [S(1), S(0)]
    LyB = [S(0), S(2)]
    LyC = [S(1), S(2)]

    @df.region()
    def top(A: TyI[M, K], B: TyI[K, N], C: TyO[M, N]):
        A_pipe: Stream[TyI[At, Kt], 2][Pk, Pm, Pn]
        pipe: Stream[TyO[Mt, Nt], 2][Pk - 1, Pm, Pn]

        @df.kernel(mapping=[Pk, Pm], args=[A])
        def load_a(local_A: TyI[M, K] @ LyA):
            pk, pm = df.get_pid()
            A_sub: TyI[At, Kt]
            with allo.meta_for(Pn) as pn:
                for i, k in allo.grid(At, Kt):
                    A_sub[i, k] = local_A[i, k]
                A_pipe[pk, pm, pn].put(A_sub)
                for i, k in allo.grid(At, Kt):
                    A_sub[i, k] = local_A[At + i, k]
                A_pipe[pk, pm, pn].put(A_sub)

        @df.kernel(mapping=[Pk, Pm, Pn], args=[B, C])
        def gemm(local_B: TyI[K, N] @ LyB, local_C: TyO[M, N] @ LyC):
            pk, pm, pn = df.get_pid()
            C_in: TyO[Mt, Nt]
            with allo.meta_if(pk > 0):
                C_in[:, :] = pipe[pk - 1, pm, pn].get()
            with allo.meta_else():
                C_in[:, :] = 0
            C_prod: TyO[Mt, Nt] = 0
            C_sub: TyO[At, Nt]
            for t in range(rho):
                A_recv: TyI[At, Kt] = A_pipe[pk, pm, pn].get()
                C_sub[:, :] = allo.matmul(A_recv, local_B)
                for i, j in allo.grid(At, Nt):
                    C_prod[t * At + i, j] = C_sub[i, j]
            C_out: TyO[Mt, Nt]
            C_out[:, :] = allo.add(C_prod, C_in)
            with allo.meta_if(pk < Pk - 1):
                pipe[pk, pm, pn].put(C_out)
            with allo.meta_elif(pk == Pk - 1):
                local_C[:, :] = C_out

    return top, gen_atb_gemm_mapping_primitive(Pm, Pn, Pk, col_num, row_num)

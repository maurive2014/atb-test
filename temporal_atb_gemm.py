# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

"""Simple frontend sketch of GEMM with a fourth temporal rho axis."""

import allo
import allo.dataflow as df
from allo.memory import Layout

S = Layout.Shard


def gen_temporal_atb_mapping_primitive(
    Pm, Pn, Pk, rho=2, col_num=4, row_num=4
):
    """Chain (k, rho) steps and bundle spatial tiles like library GEMM.

    For rho=2, every ``rho=0`` / ``rho=1`` pair represents ping and pong using the
    same B tile before the chain advances to the next K tile.
    """

    mapping_primitives = []
    bases: list[list[str]] = []

    # Logical kernel names follow mapping=[Tk, Sm, Sn, Tr]:
    # gemm_<k>_<m>_<n>_<rho>.
    for m in range(Pm):
        bases.append([])
        for n in range(Pn):
            base = f"gemm_0_{m}_{n}_0"
            for k in range(Pk):
                for r in range(rho):
                    if k == 0 and r == 0:
                        continue
                    node = f"gemm_{k}_{m}_{n}_{r}"
                    mapping_primitives.append(("chain", [base, node]))
                    base += f"-{node}"
            bases[m].append(base)

    # Reuse the same spatial bundling policy as the library GEMM.
    if Pn // col_num < 1 or Pm // row_num < 1:
        col_num, row_num = row_num, col_num
    if Pn < col_num:
        col_num = Pn
    if Pm < row_num:
        row_num = Pm
    if Pn // col_num > 1 or Pm // row_num > 1:
        for m in range(row_num):
            for n in range(col_num):
                bundle_list = []
                for p in range(Pm // row_num):
                    for q in range(Pn // col_num):
                        bundle_list.append(
                            bases[m + row_num * p][n + col_num * q]
                        )
                mapping_primitives.append(("bundle", bundle_list))

    return mapping_primitives


def TEMPORAL_ATB_GEMM(
    M, N, K, Pm, Pn, Pk, TyI, TyO, rho=2, col_num=4, row_num=4
):
    assert rho == 2
    Mt, Nt, Kt = M // Pm, N // Pn, K // Pk
    At = Mt // rho

    # Keep the original GEMM axis order and append rho as axis 3.
    Tk = df.Axis.Temporal(Pk, name="k")       # axis 0
    Sm = df.Axis.Spatial(Pm, name="m")        # axis 1
    Sn = df.Axis.Spatial(Pn, name="n")        # axis 2
    Tr = df.Axis.Temporal(rho, name="rho")    # axis 3

    # A rows are divided spatially by m, then temporally by rho.
    LyA = [S(1) * S(3), S(0)]
    LyB = [S(0), S(2)]
    LyC = [S(1), S(2)]

    @df.region()
    def top(A: TyI[M, K], B: TyI[K, N], C: TyO[M, N]):
        @df.kernel(mapping=[Tk, Sm, Sn, Tr], args=[A, B, C])
        def gemm(
            A_port: TyI[M, K] @ LyA,
            B_port: TyI[K, N] @ LyB,
            C_port: TyO[M, N] @ LyC,
        ):
            C_acc: TyO[Mt, Nt] = 0

            # K is outer. B is fetched once and reused by the two rho steps.
            with allo.meta_for(Tk.extent) as _k:
                B_tile: TyI[Kt, Nt] = B_port.get()

                with allo.meta_for(Tr.extent) as r:
                    A_tile: TyI[At, Kt] = A_port.get()
                    C_tile: TyO[At, Nt] = allo.matmul(A_tile, B_tile)
                    for i, j in allo.grid(At, Nt):
                        C_acc[r * At + i, j] += C_tile[i, j]

            C_port.put(C_acc)

    mapping_primitives = gen_temporal_atb_mapping_primitive(
        Pm, Pn, Pk, rho, col_num, row_num
    )
    return top, mapping_primitives

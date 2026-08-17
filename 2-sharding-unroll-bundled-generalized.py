# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import os

import allo
import allo.dataflow as df
import numpy as np
from allo.backend.aie import is_available
from allo.ir.types import Stream, int16
from allo.memory import Layout


S = Layout.Shard
R = Layout.Replicate

Ty = int16
M, N, K = 128, 16, 16
RHO_VALUES = [1, 2, 4, 8]

def make_atb_top(rho):
    assert M % rho == 0
    Ma = M // rho

    @df.region()
    def top(B: Ty[K, N], A: Ty[M, K], C: Ty[M, N]):
        pipeB: Stream[Ty[K, N], 1][rho]
        pipeC: Stream[Ty[Ma, N], 1][rho]

        @df.kernel(mapping=[1], args=[B])
        def loadB(local_B: Ty[K, N]):
            b = local_B
            with allo.meta_for(rho) as i:
                pipeB[i].put(local_B)

        @df.kernel(mapping=[rho], args=[A])
        def gemm(local_A: Ty[M, K] @ [S(0), R]):
            pk = df.get_pid()
            c = allo.matmul(local_A, pipeB[pk].get())
            pipeC[pk].put(c)

        @df.kernel(mapping=[1], args=[C])
        def store_c(local_C: Ty[M, N]):
            with allo.meta_for(rho) as i:
                local_C[i * Ma : (i + 1) * Ma, :] = pipeC[i].get()

    return top


def run_atb(rho):
    top = make_atb_top(rho)
    mapping_primitives = None
    if rho > 1:
        # Bundle the replicated compute kernels when rho > 1.
        mapping_primitives = [("bundle", [f"gemm_{i}" for i in range(rho)])]

    A = np.random.randint(0, 64, (M, K)).astype(np.int16)
    B = np.random.randint(0, 64, (K, N)).astype(np.int16)
    C = np.zeros((M, N)).astype(np.int16)

    if is_available():
        os.environ["FORCE_UNROLL_INDEX"] = "1"
        mod = df.build(
            top,
            target="aie",
            project="rho8.prj",
            mapping_primitives=mapping_primitives,
        )
        mod(B, A, C)
        del os.environ["FORCE_UNROLL_INDEX"]
        np.testing.assert_allclose(C, A @ B, atol=1e-5)
        print(f"rho={rho} PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


run_atb(8) # works for 1, 2, 4

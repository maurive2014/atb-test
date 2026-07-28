# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import allo
from allo.ir.types import int16, Stream
import allo.dataflow as df
import numpy as np
from allo.backend.aie import is_available


def _make_atb_top(rho):
    Ty = int16
    M, N, K = 16, 16, 16
    Ma = M // rho
    assert M % rho == 0

    @df.region()
    def top(B: Ty[K, N], A: Ty[M, K], C: Ty[M, N]):
        pipe_b: Stream[Ty[K, N], 2][rho]
        pipe_c: Stream[Ty[Ma, N], 2][rho]

        @df.kernel(mapping=[1], args=[B])
        def load_b(local_B: Ty[K, N]):
            # Broadcast B to all ATB branches.
            with allo.meta_for(rho) as i:
                pipe_b[i].put(local_B)

        @df.kernel(mapping=[rho], args=[A])
        def partial_gemm(local_A: Ty[M, K]):
            pk = df.get_pid()
            local_B: Ty[K, N] = pipe_b[pk].get()
            local_Ai: Ty[Ma, K] = local_A[pk * Ma : (pk + 1) * Ma, :]
            pipe_c[pk].put(allo.matmul(local_Ai, local_B))

        @df.kernel(mapping=[1], args=[C])
        def store_c(local_C: Ty[M, N]):
            # Gather the C subtiles and write them back in order.
            c_tiles: Ty[rho, Ma, N] = df.gather(pipe_c[:])
            with allo.meta_for(rho) as i:
                local_C[i * Ma : (i + 1) * Ma, :] = c_tiles[i]

    return top


def test_atb_v1():
    if not is_available():
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")
        return

    for rho in [4]:
        top = _make_atb_top(rho)
        M, N, K = 16, 16, 16
        A = np.random.randint(0, 64, (M, K)).astype(np.int16)
        B = np.random.randint(0, 64, (K, N)).astype(np.int16)
        C = np.zeros((M, N)).astype(np.int16)

        mod = df.build(top, target="aie")
        mod(B, A, C)
        np.testing.assert_allclose(C, A @ B, atol=1e-5)
        print("rho= "+str(rho)+" PASSED!")


if __name__ == "__main__":
    test_atb_v1()
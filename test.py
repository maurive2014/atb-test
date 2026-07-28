# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import allo
from allo.ir.types import int16, Stream
import allo.dataflow as df
import numpy as np
from allo.backend.aie import is_available


def test_atb_v1():
    Ty = int16
    M, N, K = 16, 16, 16
    rho = 2
    Ma = M // rho
    assert M % rho == 0

    @df.region()
    def top(B: Ty[K, N], A0: Ty[Ma, K], A1: Ty[Ma, K], C: Ty[M, N]):
        pipe_b: Stream[Ty[K, N], 2][rho]
        pipe_c: Stream[Ty[Ma, N], 2][rho]

        @df.kernel(mapping=[1], args=[B])
        def load_b(local_B: Ty[K, N]):
            # Send B to ATB branches.
            pipe_b[0].put(local_B)
            pipe_b[1].put(local_B)

        @df.kernel(mapping=[1], args=[A0])
        def compute_c0(local_A0: Ty[Ma, K]):
            local_B: Ty[K, N] = pipe_b[0].get()
            pipe_c[0].put(allo.matmul(local_A0, local_B))

        @df.kernel(mapping=[1], args=[A1])
        def compute_c1(local_A1: Ty[Ma, K]):
            local_B: Ty[K, N] = pipe_b[1].get()
            pipe_c[1].put(allo.matmul(local_A1, local_B))

        @df.kernel(mapping=[1], args=[C])
        def store_c(local_C: Ty[M, N]):
            # Gather the two C subtiles
            c_tiles: Ty[rho, Ma, N] = df.gather(pipe_c[:])
            local_C[:Ma, :] = c_tiles[0]
            local_C[Ma:, :] = c_tiles[1]

    A = np.random.randint(0, 64, (M, K)).astype(np.int16)
    B = np.random.randint(0, 64, (K, N)).astype(np.int16)
    C = np.zeros((M, N)).astype(np.int16)

    if is_available():
        mod = df.build(top, target="aie")
        mod(B, A[:Ma, :], A[Ma:, :], C)
        np.testing.assert_allclose(C, A @ B, atol=1e-5)
        print("PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


if __name__ == "__main__":
    test_atb_v1()
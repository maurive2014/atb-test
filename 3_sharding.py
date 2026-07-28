# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import allo
from allo.ir.types import int16, Stream
import allo.dataflow as df
import numpy as np
from allo.backend.aie import is_available
from allo.memory import Layout

S = Layout.Shard
R = Layout.Replicate


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


def _make_atb_top(rho: int):
    Ty = int16
    # Keep each shard large enough for the AIE vectorized matmul kernel.
    # rho=8 gives a local M tile of 8, which is still valid for the 16-bit path.
    M, N, K = 64, 64, 64
    Ma = M // rho
    assert M % rho == 0

    LyA = [S(0), R]

    @df.region()
    def top(A: Ty[M, K], B: Ty[K, N], C: Ty[M, N]):
        pipe_c: Stream[Ty[Ma, N], 2][rho]

        # no broadcast of B, each branch gets its own copy of B. Was getting overflow error.

        @df.kernel(mapping=[rho], args=[A, B])
        def compute_c(local_A: Ty[M, K] @ LyA, local_B: Ty[K, N]):
            pk = df.get_pid()
            pipe_c[pk].put(allo.matmul(local_A, local_B))

        @df.kernel(mapping=[1], args=[C])
        def store_c(local_C: Ty[M, N]):
            # Gather the rho C subtiles back into the full output.
            c_tiles: Ty[rho, Ma, N] = df.gather(pipe_c[:])
            with allo.meta_for(rho) as i:
                local_C[i * Ma : (i + 1) * Ma, :] = c_tiles[i]

    return top


def test_atb_v2():
    M, N, K = 64, 64, 64
    A = np.random.randint(0, 64, (M, K)).astype(np.int16)
    B = np.random.randint(0, 64, (K, N)).astype(np.int16)

    if is_available():
        for rho in (4, 2):
            top = _make_atb_top(rho)
            mod = df.build(top, target="aie", project=f"atb_rho_{rho}.prj")
            C = np.zeros((M, N)).astype(np.int16)
            mod(A, B, C)
            np.testing.assert_allclose(C, A @ B, atol=1e-5)
        print("PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


if __name__ == "__main__":
    #test_atb_v1()
    test_atb_v2()

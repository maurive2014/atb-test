# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import allo
from allo.backend.aie import is_available
from allo.ir.types import Stream, int16, int32
import allo.dataflow as df
from allo.memory import Layout
import numpy as np

S = Layout.Shard


def test_atb_config1_like_gemm():
    # This is a small ATB-style GEMM demo, not the paper-scale config1.
    #
    # The core idea is still the same:
    # - keep one C tile alive across the whole K reduction
    # - split A into rho smaller row chunks inside the kernel
    # - pass the partial C tile through a ping-pong stream
    #
    # The current AIE frontend/backend path seems happier when:
    # - C is copied into a fresh local buffer first
    # - the rho row chunks are updated in a simple compile-time loop
    # rather than by repeatedly aliasing and slicing the same value.
    TyI = int16
    TyO = int32

    # Small demo sizes. These are chosen to stay close to the ping-pong GEMM
    # example while still giving us a visible asymmetric buffering ratio.
    M, N, K = 64, 64, 64
    Pm, Pn, Pk = 2, 2, 2
    rho = 4

    assert M % Pm == 0 and N % Pn == 0 and K % Pk == 0
    Mt, Nt, Kt = M // Pm, N // Pn, K // Pk

    # rho=4 means A is buffered in four smaller row chunks while C stays live
    # as one PE-local tile.
    Ma = Mt // rho
    assert Mt % rho == 0, "rho must evenly divide the PE-local M tile"

    # A is sharded by PE row and K stage.
    LyA = [S(1), S(0)]
    # B is sharded by K stage and PE column.
    LyB = [S(0), S(2)]
    # C is sharded by PE row and PE column, so the kernel sees a full logical
    # C buffer but each PE only owns one tile-shaped shard.
    LyC = [S(1), S(2)]

    @df.region()
    def top(A: TyI[M, K], B: TyI[K, N], C: TyO[M, N]):
        # One tile per PE. The first dimension is the K pipeline stage.
        pipe: Stream[TyO[Mt, Nt], 2][Pk - 1, Pm, Pn]

        @df.kernel(mapping=[Pk, Pm, Pn], args=[A, B, C])
        def gemm(
            local_A: TyI[M, K] @ LyA,
            local_B: TyI[K, N] @ LyB,
            local_C: TyO[M, N] @ LyC,
        ):
            pk, pm, pn = df.get_pid()

            # Load the running C tile from the previous K stage.
            C_in: TyO[Mt, Nt]
            with allo.meta_if(pk > 0):
                C_in[:, :] = pipe[pk - 1, pm, pn].get()
            with allo.meta_else():
                C_in[:, :] = 0

            # Make C_out a real local buffer first. This avoids the "C_out is
            # just an alias of C_in" pattern that was triggering layout issues.
            C_out: TyO[Mt, Nt] = 0
            C_out[:, :] = C_in

            # ATB row chunks:
            # each iteration computes one smaller A slice and updates the
            # corresponding rows of the live C tile.
            k0 = pk * Kt
            k1 = k0 + Kt
            n0 = pn * Nt
            n1 = n0 + Nt
            with allo.meta_for(rho) as r:
                row = r * Ma

                # The row chunk is computed directly from slices of the live
                # tiles. This is the closest pattern to the slice examples that
                # already work in Allo.
                C_out[row : row + Ma, :] = allo.add(
                    allo.matmul(
                        local_A[row : row + Ma, k0:k1],
                        local_B[k0:k1, n0:n1],
                    ),
                    C_in[row : row + Ma, :],
                )

            # Send the updated C tile onward, or write it back on the final K
            # stage.
            with allo.meta_if(pk < Pk - 1):
                pipe[pk, pm, pn].put(C_out)
            with allo.meta_elif(pk == Pk - 1):
                local_C[:, :] = C_out

    if is_available():
        mod = df.build(top, target="aie")

        # Use tiny values so the int32 reference is easy to verify.
        A = np.random.randint(-2, 2, (M, K)).astype(np.int16)
        B = np.random.randint(-2, 2, (K, N)).astype(np.int16)
        C = np.zeros((M, N)).astype(np.int32)

        mod(A, B, C)
        ref = A.astype(np.int32) @ B.astype(np.int32)
        np.testing.assert_array_equal(C, ref)
        print("PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


if __name__ == "__main__":
    test_atb_config1_like_gemm()

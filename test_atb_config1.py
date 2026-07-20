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
    # We keep the same idea:
    # - split the work over a 2D PE grid
    # - keep one C tile alive across several smaller A tiles
    # - use a ping-pong stream to pass partial sums along the K pipeline
    #
    # The sizes below are chosen so the example fits the default AIE mesh and
    # also satisfy the backend's vectorized matmul tile requirements.
    # The 2x2x2 grid gives us 8 logical kernels, which fits the default
    # 4x4 mesh that Allo uses when no device_type is passed.
    TyI = int16
    TyO = int32
    M, N, K = 64, 64, 64
    Pm, Pn, Pk = 2, 2, 2
    rho = 4
    assert M % Pm == 0 and N % Pn == 0 and K % Pk == 0
    Mt, Nt, Kt = M // Pm, N // Pn, K // Pk
    # One output tile per PE row/column, and one K chunk per pipeline stage.
    # With rho=4, the A side is broken into four 8x32 chunks while C keeps the
    # full 32x32 PE-local tile live across the whole reduction.
    # We widen C to int32 so the backend does not try to legalize an i16 vector
    # add on the partial sum.
    Ma = Mt // rho  # A is buffered in smaller row chunks than C.
    assert Mt % rho == 0, "rho must evenly divide the PE-local M tile"

    # A is sharded by PE row and K stage.
    LyA = [S(1), S(0)]
    # B is sharded by K stage and PE column.
    LyB = [S(0), S(2)]
    # C is sharded by PE row and PE column.
    LyC = [S(1), S(2)]

    @df.region()
    def top(A: TyI[M, K], B: TyI[K, N], C: TyO[M, N]):
        # Each entry in the pipe holds one PE-local C tile.
        # The first dimension is the K-pipeline stage; the last two are the PE grid.
        pipe: Stream[TyO[Mt, Nt], 2][Pk - 1, Pm, Pn]

        # The kernel grid is [K stage, PE row, PE column].
        @df.kernel(mapping=[Pk, Pm, Pn], args=[A, B, C])
        def gemm(
            local_A: TyI[M, K] @ LyA,
            local_B: TyI[K, N] @ LyB,
            local_C: TyO[M, N] @ LyC,
        ):
            pk, pm, pn = df.get_pid()
            C_in: TyO[Mt, Nt]
            # The partial C tile arrives from the previous K stage.
            with allo.meta_if(pk > 0):
                C_in[:, :] = pipe[pk - 1, pm, pn].get()
            with allo.meta_else():
                C_in[:, :] = 0

            # This is the asymmetric buffering part:
            # - C_out is the long-lived buffer and keeps the whole PE-local tile.
            # - A_sub is short-lived and only holds 1/rho of the rows at a time.
            #   rho = 4 means "use four smaller A chunks for one C tile".
            C_out: TyO[Mt, Nt] = C_in
            with allo.meta_for(rho) as r:
                # After sharding across the K-stage axis, each PE only sees Kt columns.
                A_sub: TyI[Ma, Kt]
                A_sub[:, :] = local_A[r * Ma : (r + 1) * Ma, :]
                # Use an explicit scalar reduction for the row chunk.
                # This is slower than `allo.matmul`, but it keeps the first
                # prototype away from the backend's vectorized matmul layout
                # optimization, which is where the earlier build failures came from.
                for i in range(Ma):
                    for j in range(Nt):
                        acc: TyO = C_out[r * Ma + i, j]
                        for k in range(Kt):
                            acc += A_sub[i, k] * local_B[k, j]
                        C_out[r * Ma + i, j] = acc

            # Ping-pong the partial C tile to the next K stage, then drain it
            # to the final output when we reach the last stage.
            with allo.meta_if(pk < Pk - 1):
                pipe[pk, pm, pn].put(C_out)
            with allo.meta_elif(pk == Pk - 1):
                local_C[:, :] = C_out

    if is_available():
        # Keep the build call as close as possible to test_pingpong_gemm.py.
        mod = df.build(top, target="aie")

        # Small integer values keep the reference result safely in range for int32.
        A = np.random.randint(-2, 2, (M, K)).astype(np.int16)
        B = np.random.randint(-2, 2, (K, N)).astype(np.int16)
        C = np.zeros((M, N)).astype(np.int32)
        mod(A, B, C)
        ref = A.astype(np.int32) @ B.astype(np.int32)
        np.testing.assert_allclose(C, ref, atol=1e-5)
        print("PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


if __name__ == "__main__":
    test_atb_config1_like_gemm()

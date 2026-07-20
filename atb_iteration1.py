# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import allo
from allo.backend.aie import is_available
from allo.ir.types import Stream, int16
import allo.dataflow as df
from allo.memory import Layout
import numpy as np

S = Layout.Shard


def test_atb_config1_like_gemm():
    Ty = int16
    M, N, K = 64, 64, 64
    Pm, Pn, Pk = 2, 2, 2
    rho = 4
    assert M % Pm == 0 and N % Pn == 0 and K % Pk == 0 
    Mt, Nt, Kt = M // Pm, N // Pn, K // Pk

    
    # With rho=4, the A side is broken into four 8x32 chunks while C keeps the 
    # tile across the whole k reduction.
    Ma = Mt // rho  # A is buffered in smaller rows than C.
    assert Mt % rho == 0 # rho must evenly divide the  M tile

    LyA = [S(1), S(0)]
    LyB = [S(0), S(2)]
    LyC = [S(1), S(2)]

    @df.region()
    def top(A: Ty[M, K], B: Ty[K, N], C: Ty[M, N]):

        pipe: Stream[Ty[Mt, Nt], 2][Pk - 1, Pm, Pn]


        @df.kernel(mapping=[Pk, Pm, Pn], args=[A, B, C])
        def gemm(
            local_A: Ty[M, K] @ LyA,
            local_B: Ty[K, N] @ LyB,
            local_C: Ty[M, N] @ LyC,
        ):
            pk, pm, pn = df.get_pid()
            C_in: Ty[Mt, Nt]

            # The partial C tile arrives from the previous K stage.
            with allo.meta_if(pk > 0):
                C_in[:, :] = pipe[pk - 1, pm, pn].get()
            with allo.meta_else():
                C_in[:, :] = 0

            # ATB:
            # C_sum is buffer that lasts more than the A_sub.
            # A_sub lives shorts and only holds 1/rho of the rows
            # rho = ratio MC/MA
            C_sum: Ty[Mt, Nt] = C_in
            with allo.meta_for(rho) as r:
                
                A_sub: Ty[Ma, Kt]
                A_sub[:, :] = local_A[r * Ma : (r + 1) * Ma, :]
                C_sum[r * Ma : (r + 1) * Ma, :] += allo.matmul(A_sub, local_B)

            # Ping-pong the partial C tile to the next K stage OR FInal putput
            with allo.meta_if(pk < Pk - 1):
                pipe[pk, pm, pn].put(C_sum)
            with allo.meta_elif(pk == Pk - 1):
                local_C[:, :] = C_sum

    if is_available():

        mod = df.build(top, target="aie")
        A = np.random.randint(-2, 2, (M, K)).astype(np.int16)
        B = np.random.randint(-2, 2, (K, N)).astype(np.int16)
        C = np.zeros((M, N)).astype(np.int16)
        mod(A, B, C)
        ref = A.astype(np.int32) @ B.astype(np.int32)
        np.testing.assert_array_equal(C.astype(np.int32), ref)
        print("PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


if __name__ == "__main__":
    test_atb_config1_like_gemm()

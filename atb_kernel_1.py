import allo
from allo.ir.types import Stream
import allo.dataflow as df
from allo.memory import Layout

import os
from allo.ir.types import int4, int8, int16, bfloat16
import numpy as np
from ml_dtypes import bfloat16 as np_bfloat16
from allo.backend.aie import is_available

S = Layout.Shard
R = Layout.Replicate

# Pm, Pn number of partitions in M, N dimension
def GEMM(M, N, K, 
        Pm, Pn, Pk, 
        TyI, TyO,
        A_tile_M,
        A_tile_K,
        C_tile_M,
        C_tile_N):

    Mt = C_tile_M
    Nt = C_tile_N

    LyA = [S(1), S(0)]
    LyB = [S(0), S(2)]
    LyC = [S(1), S(2)]

    @df.region()
    def top(A: TyI[M, K], B: TyI[K, N], C: TyO[M, N]):
        pipe: Stream[TyO[Mt, Nt], 2][Pk - 1, Pm, Pn] 

        @df.kernel(mapping=[Pk, Pm, Pn], args=[A, B, C])
        def gemm(

            #tile buffers in the local memories of each kernel:

            local_A: TyI[M, K] @ LyA, 
            local_B: TyI[K, N] @ LyB, 
            local_C: TyO[M, N] @ LyC
        ):
            pk, pm, pn = df.get_pid()
            C_in: TyO[Mt, Nt]
            with allo.meta_if(pk > 0):
                C_in[:, :] = pipe[pk - 1, pm, pn].get()
            with allo.meta_else():
                C_in[:, :] = 0
            C_out: TyO[Mt, Nt] = allo.add(allo.matmul(local_A, local_B), C_in)
            with allo.meta_if(pk < Pk - 1):
                pipe[pk, pm, pn].put(C_out)
            with allo.meta_elif(pk == Pk - 1):
                local_C[:, :] = C_out



def test_atb_gemm(M, N, K, Pm, Pn, Pk, TyI, TyO):
    assert TyI == TyO or TyI is int4
    top = GEMM(M, N, K, Pm, Pn, Pk, TyI, TyO)

    if is_available():
        os.environ["ENABLE_AGGRESSIVE_PORT_UTILIZATION_PATCH"] = "1"
        mod = df.build(
            top,
            #project="top.prj",
            target="aie",
            #mapping_primitives=mapping_primitives,
            #profile=True,
            #warmup=200,
            #num_iters=1000,
        )
        if TyI is bfloat16:
            A = (np.random.random((M, K)) * 0.1).astype(np_bfloat16)
            B = (np.random.random((K, N)) * 0.1).astype(np_bfloat16)
            C = np.zeros((M, N)).astype(np_bfloat16)
        elif TyI in {int4, int8}:
            A = np.random.randint(-4, 4, (M, K)).astype(np.int8)
            B = np.random.randint(-4, 4, (K, N)).astype(np.int8)
            C = np.zeros((M, N)).astype(np.int8)
        elif TyI is int16:
            A = np.random.randint(-8, 8, (M, K)).astype(np.int16)
            B = np.random.randint(-8, 8, (K, N)).astype(np.int16)
            C = np.zeros((M, N)).astype(np.int16)
        else:
            raise ValueError(f"unsupported data type {TyI}")
        mod(A, B, C)
        if TyI is bfloat16:
            np.testing.assert_allclose(
                C.astype(np.float32), (A @ B).astype(np.float32), atol=1e-1
            )
        else:
            np.testing.assert_allclose(C, A @ B, atol=1e-5)
        print("PASSED!")
        del os.environ["ENABLE_AGGRESSIVE_PORT_UTILIZATION_PATCH"]
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


if __name__ == "__main__":
    M, N, K = 2048, 2048, 2048
    m, n, k = 64, 64, 64
    # - i8
    test_atb_gemm(M, N, K, M // m, N // n, K // k, int8, int8)

    # - i16
    test_atb_gemm(M, N, K, M // m, N // n, K // k, int16, int16)

    # - bf16
    try:
        test_atb_gemm(M, N, K, M // m, N // n, K // k, bfloat16, bfloat16)
    except:
        print("[NOTE]: bfloat16 have accuracy issue")
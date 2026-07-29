# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import pytest

import os
import allo
import allo.dataflow as df
from allo.backend.aie import is_available
from allo.ir.types import int16, Stream
import numpy as np

Ty = int16
M, N, K = 64, 16, 16
RHO_VALUES = [1, 2, 4, 8]

# Mapping model:
# 1 = bundle
# 2 = bundle + chain(compute -> store) #TODO Naming
# 3 = bundle + chain(load_b -> compute) #TODO Naming
# 4 = bundle + both chains #NAMES NOT SURE #TODO
MODEL = 3


def make_atb_top(rho):
    assert M % rho == 0
    Ma = M // rho

    @df.region()
    def top(A: Ty[M, K], B: Ty[K, N], C: Ty[M, N]):
        pipe_a: Stream[Ty[Ma, K], 2][rho]
        pipe_b: Stream[Ty[K, N], 2][rho]
        pipe_c: Stream[Ty[Ma, N], 2][rho]

        @df.kernel(mapping=[1], args=[A])
        def load_a(local_A: Ty[M, K]):
            # Pack A into rho explicit subtiles before fanning out.
            with allo.meta_for(rho) as i:
                tile_A: Ty[Ma, K] = 0
                tile_A[:, :] = local_A[i * Ma : (i + 1) * Ma, :]
                pipe_a[i].put(tile_A)

        @df.kernel(mapping=[1], args=[B])
        def load_b(local_B: Ty[K, N]):
            # Broadcast B once to every branch.
            with allo.meta_for(rho) as i:
                pipe_b[i].put(local_B)

        @df.kernel(mapping=[rho])
        def compute():
            pk = df.get_pid()
            local_A: Ty[Ma, K] = pipe_a[pk].get()
            local_B: Ty[K, N] = pipe_b[pk].get()
            pipe_c[pk].put(allo.matmul(local_A, local_B))

        @df.kernel(mapping=[1], args=[C])
        def store_c(local_C: Ty[M, N]):
            c_tiles: Ty[rho, Ma, N] = df.gather(pipe_c[:])
            with allo.meta_for(rho) as i:
                local_C[i * Ma : (i + 1) * Ma, :] = c_tiles[i]

    return top


def run_atb(rho):
    top = make_atb_top(rho)
    mapping_primitives = None
    mapping_primitives = []

    # Bundle the replicated compute kernels when rho > 1
    if rho > 1:
        mapping_primitives.append(
            ("bundle", [f"compute_{i}" for i in range(rho)])
        )

    # Name of the compute kernel after bundling if rho > 1.  
    compute_name = f"compute_0x{rho}" if rho > 1 else "compute_0"

    # -------------------------------------------------------
    # Mapping models
    # -------------------------------------------------------

    # Model 1:
    # load_b -> compute -> store
    if MODEL == 1:
        pass

    # Model 2:
    # load_b -> (compute + store)
    elif MODEL == 2:
        mapping_primitives.append(
            ("chain", [compute_name, "store_c_0"])
        )

    # Model 3:
    # (load_b + compute) -> store
    elif MODEL == 3:
        mapping_primitives.append(
            ("chain", ["load_b_0", compute_name])
        )

    # Model 4:
    # (load_b + compute + store)

    elif MODEL == 4:
        mapping_primitives.append(
            ("chain", ["load_b_0", compute_name])
        )

        # TODO:
        # Replace "load_b_compute" after first chain
        mapping_primitives.append(
            ("chain", ["load_b_compute", "store_c_0"])
        )

    if len(mapping_primitives) == 0:
        mapping_primitives = None

    A = np.random.randint(0, 64, (M, K)).astype(np.int16)
    B = np.random.randint(0, 64, (K, N)).astype(np.int16)
    C = np.zeros((M, N)).astype(np.int16)

    if is_available():
        mod = df.build(top, target="aie", mapping_primitives=mapping_primitives)
        mod(A, B, C)
        np.testing.assert_allclose(C, A @ B, atol=1e-5)
        print(f"rho={rho} PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


@pytest.mark.parametrize("rho", RHO_VALUES)
def test_atb_generalized(rho):
    run_atb(rho)


if __name__ == "__main__":
    for rho in RHO_VALUES:
        os.environ["FORCE_UNROLL_INDEX"] = "1"
        run_atb(rho)
        del os.environ["FORCE_UNROLL_INDEX"] 
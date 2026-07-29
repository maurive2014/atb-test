# Copyright Allo authors. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

import os
import tempfile
from pathlib import Path

import pytest

import allo
import allo.dataflow as df
from allo.backend.aie import is_available
from allo.ir.types import int16, Stream
import numpy as np

Ty = int16
M, N, K = 64, 16, 16
RHO_VALUES = [8]
ATB_DEBUG_DIR = Path(os.environ.get("ALLO_ATB_DUMP_DIR", tempfile.gettempdir())) / (
    "allo_atb_debug"
)
ATB_PRINT_FULL = os.environ.get("ALLO_ATB_PRINT_FULL") == "1"


def dump_atb_debug(rho, A, B, C, expected):
    # Debug-only helper to inspect a failing ATB run; easy to delete later.
    dump_dir = ATB_DEBUG_DIR / f"rho_{rho}"
    dump_dir.mkdir(parents=True, exist_ok=True)

    diff = C.astype(np.int64) - expected.astype(np.int64)
    mismatch_mask = C != expected
    mismatch_indices = np.argwhere(mismatch_mask)

    print(f"\n[ATB DEBUG] rho={rho}")
    print(f"[ATB DEBUG] mismatched elements: {mismatch_indices.shape[0]} / {C.size}")
    print(f"[ATB DEBUG] dumping matrices to: {dump_dir}")

    def _print_sample(name, array):
        rows = min(6, array.shape[0])
        cols = min(6, array.shape[1])
        print(f"[ATB DEBUG] {name} top-left {rows}x{cols}:")
        print(np.array2string(array[:rows, :cols], separator=", "))

    _print_sample("A", A)
    _print_sample("B", B)
    _print_sample("C", C)
    _print_sample("expected", expected)
    _print_sample("diff", diff)

    if mismatch_indices.size:
        print("[ATB DEBUG] first mismatches:")
        for row, col in mismatch_indices[:8]:
            print(
                f"  ({row}, {col}): C={C[row, col]}, expected={expected[row, col]}, diff={diff[row, col]}"
            )
            r0 = max(0, row - 1)
            r1 = min(C.shape[0], row + 2)
            c0 = max(0, col - 1)
            c1 = min(C.shape[1], col + 2)
            print("  C window:")
            print(np.array2string(C[r0:r1, c0:c1], separator=", "))
            print("  expected window:")
            print(np.array2string(expected[r0:r1, c0:c1], separator=", "))
            print("  diff window:")
            print(np.array2string(diff[r0:r1, c0:c1], separator=", "))

    np.savetxt(dump_dir / "A.txt", A, fmt="%d")
    np.savetxt(dump_dir / "B.txt", B, fmt="%d")
    np.savetxt(dump_dir / "C.txt", C, fmt="%d")
    np.savetxt(dump_dir / "expected.txt", expected, fmt="%d")
    np.savetxt(dump_dir / "diff.txt", diff, fmt="%d")
    np.save(dump_dir / "A.npy", A)
    np.save(dump_dir / "B.npy", B)
    np.save(dump_dir / "C.npy", C)
    np.save(dump_dir / "expected.npy", expected)
    np.save(dump_dir / "diff.npy", diff)

    if ATB_PRINT_FULL:
        with np.printoptions(threshold=np.inf, linewidth=200):
            print("[ATB DEBUG] full A:")
            print(A)
            print("[ATB DEBUG] full B:")
            print(B)
            print("[ATB DEBUG] full C:")
            print(C)
            print("[ATB DEBUG] full expected:")
            print(expected)
            print("[ATB DEBUG] full diff:")
            print(diff)


def build_aie_module(top, mapping_primitives):
    # ATB indexes stream arrays inside meta_for loops, so force unrolling on AIE.
    prev_force_unroll_index = os.environ.get("FORCE_UNROLL_INDEX")
    os.environ["FORCE_UNROLL_INDEX"] = "1"
    try:
        return df.build(top, target="aie", mapping_primitives=mapping_primitives)
    finally:
        if prev_force_unroll_index is None:
            os.environ.pop("FORCE_UNROLL_INDEX", None)
        else:
            os.environ["FORCE_UNROLL_INDEX"] = prev_force_unroll_index


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
    if rho > 1:
        mapping_primitives = [("bundle", [f"compute_{i}" for i in range(rho)])]

    A = np.random.randint(0, 64, (M, K)).astype(np.int16)
    B = np.random.randint(0, 64, (K, N)).astype(np.int16)
    C = np.zeros((M, N)).astype(np.int16)

    if is_available():
        mod = build_aie_module(top, mapping_primitives)
        mod(A, B, C)
        expected = A @ B
        try:
            np.testing.assert_allclose(C, expected, atol=1e-5)
        except AssertionError:
            dump_atb_debug(rho, A, B, C, expected)
            raise
        print(f"rho={rho} PASSED!")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


def run_atb_debug(rho):
    top = make_atb_top(rho)
    mapping_primitives = None
    if rho > 1:
        mapping_primitives = [("bundle", [f"compute_{i}" for i in range(rho)])]

    rng = np.random.default_rng(0)
    A = rng.integers(0, 64, (M, K)).astype(np.int16)
    B = rng.integers(0, 64, (K, N)).astype(np.int16)
    C = np.zeros((M, N)).astype(np.int16)

    if is_available():
        mod = build_aie_module(top, mapping_primitives)
        mod(A, B, C)
        expected = A @ B
        dump_atb_debug(rho, A, B, C, expected)
        np.testing.assert_allclose(C, expected, atol=1e-5)
        print(f"rho={rho} DEBUG DUMP COMPLETE")
    else:
        print("MLIR_AIE_INSTALL_DIR unset. Skipping AIE backend test.")


@pytest.mark.parametrize("rho", RHO_VALUES)
def test_atb_generalized(rho):
    run_atb(rho)


@pytest.mark.skipif(
    os.environ.get("ALLO_ATB_DEBUG") != "1",
    reason="Set ALLO_ATB_DEBUG=1 to run the ATB debug dump test.",
)
@pytest.mark.parametrize("rho", RHO_VALUES)
def test_atb_debug_dump(rho):
    run_atb_debug(rho)


if __name__ == "__main__":
    if os.environ.get("ALLO_ATB_DEBUG") == "1":
        for rho in RHO_VALUES:
            run_atb_debug(rho)
    else:
        for rho in RHO_VALUES:
            run_atb(rho)

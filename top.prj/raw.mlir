module {
  func.func @load_b_0(%arg0: memref<64x64xi16>, %arg1: !allo.stream<memref<64x64xi16>, 1>) attributes {df.kernel, itypes = "s_", otypes = "", stypes = "_o", tag = "load_b_()"} {
    %alloc = memref.alloc() {name = "b"} : memref<64x64xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%arg0 : memref<64x64xi16>) outs(%alloc : memref<64x64xi16>)
    affine.for %arg2 = 0 to 2 {
      allo.stream_put(%arg1, [], %alloc) : !allo.stream<memref<64x64xi16>, 1> contains memref<64x64xi16>
    } {loop_name = "i", op_name = "S_i_0"}
    return
  }
  func.func @gemm_0(%arg0: memref<32x64xi16>, %arg1: !allo.stream<memref<64x64xi16>, 1>, %arg2: !allo.stream<memref<32x64xi16>, 2>) attributes {df.kernel, itypes = "s__", otypes = "", stypes = "_io", tag = "gemm_()"} {
    %c0_i16 = arith.constant 0 : i16
    %0 = allo.stream_get(%arg1, []) : !allo.stream<memref<64x64xi16>, 1> -> memref<64x64xi16>
    %alloc = memref.alloc() {name = "c"} : memref<32x64xi16>
    linalg.fill {op_name = "matmul_init_zero_0"} ins(%c0_i16 : i16) outs(%alloc : memref<32x64xi16>)
    linalg.matmul {op_name = "matmul_1"} ins(%arg0, %0 : memref<32x64xi16>, memref<64x64xi16>) outs(%alloc : memref<32x64xi16>)
    allo.stream_put(%arg2, [], %alloc) : !allo.stream<memref<32x64xi16>, 2> contains memref<32x64xi16>
    return
  }
  func.func @store_c_0(%arg0: memref<64x64xi16>, %arg1: !allo.stream<memref<32x64xi16>, 2>) attributes {df.kernel, itypes = "s_", otypes = "", stypes = "_i", tag = "store_c_()"} {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %alloc = memref.alloc() {name = "c_tiles"} : memref<2x32x64xi16>
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %0 = allo.stream_get(%arg1, []) : !allo.stream<memref<32x64xi16>, 2> -> memref<32x64xi16>
      %subview = memref.subview %alloc[%arg2, 0, 0] [1, 32, 64] [1, 1, 1] : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      memref.copy %0, %subview : memref<32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
    } {loop_name = "gather0", op_name = "S_gather_0"}
    affine.for %arg2 = 0 to 2 {
      %subview = memref.subview %alloc[%arg2, 0, 0] [1, 32, 64] [1, 1, 1] {from = "c_tiles"} : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      %subview_0 = memref.subview %arg0[0, 0] [32, 64] [1, 1] : memref<64x64xi16> to memref<32x64xi16, strided<[64, 1]>>
      memref.copy %subview, %subview_0 {to = "local_C"} : memref<32x64xi16, strided<[64, 1], offset: ?>> to memref<32x64xi16, strided<[64, 1]>>
    } {loop_name = "i", op_name = "S_i_1"}
    return
  }
  func.func @top(%arg0: memref<64x64xi16>, %arg1: memref<64x64xi16>, %arg2: memref<64x64xi16>) attributes {dataflow, itypes = "sss"} {
    %0 = allo.stream_construct() {name = "pipe_b_0"} : !allo.stream<memref<64x64xi16>, 1>
    %1 = allo.stream_construct() {name = "pipe_b_1"} : !allo.stream<memref<64x64xi16>, 1>
    %2 = allo.stream_construct() {name = "pipe_c_0"} : !allo.stream<memref<32x64xi16>, 2>
    %3 = allo.stream_construct() {name = "pipe_c_1"} : !allo.stream<memref<32x64xi16>, 2>
    return
  }
}

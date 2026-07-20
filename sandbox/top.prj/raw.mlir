#map = affine_map<(d0, d1) -> (d0, d1)>
module {
  func.func @gemm_0_0_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o", tag = "gemm_(None, (), (), None)"} {
    %c0_i16 = arith.constant 0 : i16
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi32>
    %alloc_0 = memref.alloc() : memref<32x32xi32>
    linalg.fill ins(%c0_i32 : i32) outs(%alloc_0 : memref<32x32xi32>)
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi32> to memref<32x32xi32>
    %alloc_1 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_1 : memref<32x32xi32>)
    %alloc_2 = memref.alloc() {name = "A_0"} : memref<8x32xi16>
    %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    memref.copy %subview, %alloc_2 {to = "A_0"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
    %alloc_3 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_0"} ins(%c0_i16 : i16) outs(%alloc_3 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_1"} ins(%alloc_2, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_3 : memref<8x32xi16>)
    %alloc_4 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_3 : memref<8x32xi16>) outs(%alloc_4 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %0 = arith.extsi %in : i16 to i32
      linalg.yield %0 : i32
    }
    %subview_5 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_2"} ins(%subview_5, %alloc_4 : memref<8x32xi32, strided<[32, 1]>>, memref<8x32xi32>) outs(%alloc_6 : memref<8x32xi32>)
    %subview_7 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_6, %subview_7 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_8 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_9 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_9, %alloc_8 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_10 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_3"} ins(%c0_i16 : i16) outs(%alloc_10 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_4"} ins(%alloc_8, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_10 : memref<8x32xi16>)
    %alloc_11 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_10 : memref<8x32xi16>) outs(%alloc_11 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %0 = arith.extsi %in : i16 to i32
      linalg.yield %0 : i32
    }
    %subview_12 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_13 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_5"} ins(%subview_12, %alloc_11 : memref<8x32xi32, strided<[32, 1], offset: 256>>, memref<8x32xi32>) outs(%alloc_13 : memref<8x32xi32>)
    %subview_14 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_13, %subview_14 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_15 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_16 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_16, %alloc_15 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_17 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_6"} ins(%c0_i16 : i16) outs(%alloc_17 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_7"} ins(%alloc_15, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_17 : memref<8x32xi16>)
    %alloc_18 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_17 : memref<8x32xi16>) outs(%alloc_18 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %0 = arith.extsi %in : i16 to i32
      linalg.yield %0 : i32
    }
    %subview_19 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_20 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_8"} ins(%subview_19, %alloc_18 : memref<8x32xi32, strided<[32, 1], offset: 512>>, memref<8x32xi32>) outs(%alloc_20 : memref<8x32xi32>)
    %subview_21 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_20, %subview_21 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_22 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_23 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_23, %alloc_22 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_24 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_9"} ins(%c0_i16 : i16) outs(%alloc_24 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_10"} ins(%alloc_22, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_24 : memref<8x32xi16>)
    %alloc_25 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_24 : memref<8x32xi16>) outs(%alloc_25 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %0 = arith.extsi %in : i16 to i32
      linalg.yield %0 : i32
    }
    %subview_26 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_27 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_11"} ins(%subview_26, %alloc_25 : memref<8x32xi32, strided<[32, 1], offset: 768>>, memref<8x32xi32>) outs(%alloc_27 : memref<8x32xi32>)
    %subview_28 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_27, %subview_28 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_1_0_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i", tag = "gemm_((), None, None, ())"} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi32>
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi32>, 2> -> memref<32x32xi32>
    memref.copy %0, %alloc {to = "C_in"} : memref<32x32xi32> to memref<32x32xi32>
    %alloc_0 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_0 : memref<32x32xi32>)
    %alloc_1 = memref.alloc() {name = "A_0"} : memref<8x32xi16>
    %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    memref.copy %subview, %alloc_1 {to = "A_0"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
    %alloc_2 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_0"} ins(%c0_i16 : i16) outs(%alloc_2 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_1"} ins(%alloc_1, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_2 : memref<8x32xi16>)
    %alloc_3 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_2 : memref<8x32xi16>) outs(%alloc_3 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %1 = arith.extsi %in : i16 to i32
      linalg.yield %1 : i32
    }
    %subview_4 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_5 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_2"} ins(%subview_4, %alloc_3 : memref<8x32xi32, strided<[32, 1]>>, memref<8x32xi32>) outs(%alloc_5 : memref<8x32xi32>)
    %subview_6 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_5, %subview_6 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_7 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_8 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_8, %alloc_7 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_9 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_3"} ins(%c0_i16 : i16) outs(%alloc_9 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_4"} ins(%alloc_7, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_9 : memref<8x32xi16>)
    %alloc_10 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_9 : memref<8x32xi16>) outs(%alloc_10 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %1 = arith.extsi %in : i16 to i32
      linalg.yield %1 : i32
    }
    %subview_11 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_12 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_5"} ins(%subview_11, %alloc_10 : memref<8x32xi32, strided<[32, 1], offset: 256>>, memref<8x32xi32>) outs(%alloc_12 : memref<8x32xi32>)
    %subview_13 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_12, %subview_13 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_14 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_15 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_15, %alloc_14 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_16 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_6"} ins(%c0_i16 : i16) outs(%alloc_16 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_7"} ins(%alloc_14, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_16 : memref<8x32xi16>)
    %alloc_17 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_16 : memref<8x32xi16>) outs(%alloc_17 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %1 = arith.extsi %in : i16 to i32
      linalg.yield %1 : i32
    }
    %subview_18 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_19 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_8"} ins(%subview_18, %alloc_17 : memref<8x32xi32, strided<[32, 1], offset: 512>>, memref<8x32xi32>) outs(%alloc_19 : memref<8x32xi32>)
    %subview_20 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_19, %subview_20 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_21 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_22 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_22, %alloc_21 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_23 = memref.alloc() : memref<8x32xi16>
    linalg.fill {op_name = "matmul_init_zero_9"} ins(%c0_i16 : i16) outs(%alloc_23 : memref<8x32xi16>)
    linalg.matmul {op_name = "matmul_10"} ins(%alloc_21, %arg1 : memref<8x32xi16>, memref<32x32xi16>) outs(%alloc_23 : memref<8x32xi16>)
    %alloc_24 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%alloc_23 : memref<8x32xi16>) outs(%alloc_24 : memref<8x32xi32>) attrs =  {cast_from = "i16", cast_to = "i32"} {
    ^bb0(%in: i16, %out: i32):
      %1 = arith.extsi %in : i16 to i32
      linalg.yield %1 : i32
    }
    %subview_25 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_26 = memref.alloc() : memref<8x32xi32>
    linalg.add {op_name = "add_11"} ins(%subview_25, %alloc_24 : memref<8x32xi32, strided<[32, 1], offset: 768>>, memref<8x32xi32>) outs(%alloc_26 : memref<8x32xi32>)
    %subview_27 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_26, %subview_27 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi32> to memref<32x32xi32>
    return
  }
  func.func @top(%arg0: memref<64x64xi16>, %arg1: memref<64x64xi16>, %arg2: memref<64x64xi32>) attributes {dataflow, itypes = "sss"} {
    %0 = allo.stream_construct() {name = "pipe_0_0_0"} : !allo.stream<memref<32x32xi32>, 2>
    %1 = allo.stream_construct() {name = "pipe_0_0_1"} : !allo.stream<memref<32x32xi32>, 2>
    %2 = allo.stream_construct() {name = "pipe_0_1_0"} : !allo.stream<memref<32x32xi32>, 2>
    %3 = allo.stream_construct() {name = "pipe_0_1_1"} : !allo.stream<memref<32x32xi32>, 2>
    return
  }
}

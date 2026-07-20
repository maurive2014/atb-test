module {
  func.func private @fill_zeros_i16_32_32_vector(memref<32x32xi16>)
  func.func private @fill_zeros_i16_8_32_vector(memref<8x32xi16>)
  func.func private @matmul_scalar_i16_i16(memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>)
  func.func private @add_i16_vector(memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>)
  func.func @gemm_0_0_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o", tag = "gemm_(None, (), (), None)"} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %alloc_0 = memref.alloc() : memref<32x32xi16>
    call @fill_zeros_i16_32_32_vector(%alloc_0) {lib = "fill_zeros_i16_32_32_vector"} : (memref<32x32xi16>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_1 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_1 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_2 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_2 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_3 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_3) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_2, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_4 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      %alloc_6 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_4, %alloc_6 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_7 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_5, %subview_7 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi16>, 2> contains memref<32x32xi16>
    return
  }
  func.func @gemm_1_0_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i", tag = "gemm_((), None, None, ())"} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi16>, 2> -> memref<32x32xi16>
    memref.copy %0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_0 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_0 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_2 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_2) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_1, %arg1, %alloc_2) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_3 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_4 = memref.alloc() : memref<8x32xi16>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_3, %alloc_5 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_5, %alloc_2, %alloc_4) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_6 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_4, %subview_6 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi16> to memref<32x32xi16>
    return
  }
  func.func @gemm_0_0_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %alloc_0 = memref.alloc() : memref<32x32xi16>
    call @fill_zeros_i16_32_32_vector(%alloc_0) {lib = "fill_zeros_i16_32_32_vector"} : (memref<32x32xi16>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_1 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_1 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_2 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_2 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_3 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_3) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_2, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_4 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      %alloc_6 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_4, %alloc_6 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_7 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_5, %subview_7 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi16>, 2> contains memref<32x32xi16>
    return
  }
  func.func @gemm_0_1_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %alloc_0 = memref.alloc() : memref<32x32xi16>
    call @fill_zeros_i16_32_32_vector(%alloc_0) {lib = "fill_zeros_i16_32_32_vector"} : (memref<32x32xi16>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_1 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_1 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_2 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_2 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_3 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_3) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_2, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_4 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      %alloc_6 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_4, %alloc_6 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_7 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_5, %subview_7 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi16>, 2> contains memref<32x32xi16>
    return
  }
  func.func @gemm_0_1_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %alloc_0 = memref.alloc() : memref<32x32xi16>
    call @fill_zeros_i16_32_32_vector(%alloc_0) {lib = "fill_zeros_i16_32_32_vector"} : (memref<32x32xi16>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_1 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_1 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_2 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_2 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_3 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_3) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_2, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_4 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      %alloc_6 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_4, %alloc_6 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_7 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_5, %subview_7 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi16>, 2> contains memref<32x32xi16>
    return
  }
  func.func @gemm_1_0_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi16>, 2> -> memref<32x32xi16>
    memref.copy %0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_0 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_0 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_2 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_2) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_1, %arg1, %alloc_2) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_3 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_4 = memref.alloc() : memref<8x32xi16>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_3, %alloc_5 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_5, %alloc_2, %alloc_4) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_6 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_4, %subview_6 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi16> to memref<32x32xi16>
    return
  }
  func.func @gemm_1_1_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi16>, 2> -> memref<32x32xi16>
    memref.copy %0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_0 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_0 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_2 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_2) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_1, %arg1, %alloc_2) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_3 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_4 = memref.alloc() : memref<8x32xi16>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_3, %alloc_5 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_5, %alloc_2, %alloc_4) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_6 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_4, %subview_6 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi16> to memref<32x32xi16>
    return
  }
  func.func @gemm_1_1_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi16>, %arg3: !allo.stream<memref<32x32xi16>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi16>
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi16>, 2> -> memref<32x32xi16>
    memref.copy %0, %alloc {to = "C_in"} : memref<32x32xi16> to memref<32x32xi16>
    %alloc_0 = memref.alloc() {name = "C_sum"} : memref<32x32xi16>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi16>) outs(%alloc_0 : memref<32x32xi16>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %alloc_2 = memref.alloc() : memref<8x32xi16>
      func.call @fill_zeros_i16_8_32_vector(%alloc_2) {lib = "fill_zeros_i16_8_32_vector"} : (memref<8x32xi16>) -> ()
      func.call @matmul_scalar_i16_i16(%alloc_1, %arg1, %alloc_2) {lib = "matmul_scalar_i16_i16"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi16>) -> ()
      %subview_3 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_sum"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      %alloc_4 = memref.alloc() : memref<8x32xi16>
      %alloc_5 = memref.alloc() : memref<8x32xi16>
      memref.copy %subview_3, %alloc_5 : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      func.call @add_i16_vector(%alloc_5, %alloc_2, %alloc_4) {lib = "add_i16_vector"} : (memref<8x32xi16>, memref<8x32xi16>, memref<8x32xi16>) -> ()
      %subview_6 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %alloc_4, %subview_6 {to = "C_sum"} : memref<8x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    } {loop_name = "r", op_name = "S_r_0"}
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi16> to memref<32x32xi16>
    return
  }
  func.func @top(%arg0: memref<64x64xi16>, %arg1: memref<64x64xi16>, %arg2: memref<64x64xi16>) attributes {dataflow, itypes = "sss"} {
    %0 = allo.stream_construct() {name = "pipe_0_0_0"} : !allo.stream<memref<32x32xi16>, 2>
    %1 = allo.stream_construct() {name = "pipe_0_0_1"} : !allo.stream<memref<32x32xi16>, 2>
    %2 = allo.stream_construct() {name = "pipe_0_1_0"} : !allo.stream<memref<32x32xi16>, 2>
    %3 = allo.stream_construct() {name = "pipe_0_1_1"} : !allo.stream<memref<32x32xi16>, 2>
    return
  }
}

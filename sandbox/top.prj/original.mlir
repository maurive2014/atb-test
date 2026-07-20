module {
  func.func private @fill_zeros_i32_32_32_vector(memref<32x32xi32>)
  func.func private @fill_zeros_i16_8_32_vector(memref<8x32xi16>)
  func.func private @fill_zeros_i32_8_32_vector(memref<8x32xi32>)
  func.func private @matmul_scalar_i16_i32(memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>)
  func.func private @add_i32_vector(memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>)
  func.func @gemm_0_0_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o", tag = "gemm_(None, (), (), None)"} {
    %c0_i16 = arith.constant 0 : i16
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi32>
    %alloc_0 = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc_0) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi32> to memref<32x32xi32>
    %alloc_1 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_1 : memref<32x32xi32>)
    %alloc_2 = memref.alloc() {name = "A_0"} : memref<8x32xi16>
    %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    memref.copy %subview, %alloc_2 {to = "A_0"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
    %alloc_3 = memref.alloc() : memref<8x32xi16>
    %alloc_4 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_4) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_2, %arg1, %alloc_4) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_5 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    %alloc_7 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_5, %alloc_7 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_7, %alloc_4, %alloc_6) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_8 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_6, %subview_8 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_9 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_10 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_10, %alloc_9 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_11 = memref.alloc() : memref<8x32xi16>
    %alloc_12 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_12) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_9, %arg1, %alloc_12) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_13 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    %alloc_15 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_13, %alloc_15 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_15, %alloc_12, %alloc_14) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_16 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_14, %subview_16 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_17 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_18 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_18, %alloc_17 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_19 = memref.alloc() : memref<8x32xi16>
    %alloc_20 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_20) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_17, %arg1, %alloc_20) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_21 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    %alloc_23 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_21, %alloc_23 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_23, %alloc_20, %alloc_22) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_24 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_22, %subview_24 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_25 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_26 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_26, %alloc_25 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_27 = memref.alloc() : memref<8x32xi16>
    %alloc_28 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_28) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_25, %arg1, %alloc_28) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_29 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    %alloc_31 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_29, %alloc_31 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_31, %alloc_28, %alloc_30) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_32 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_30, %subview_32 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
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
    %alloc_3 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_3) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_1, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_4 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_5 = memref.alloc() : memref<8x32xi32>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_4, %alloc_6 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_7 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_5, %subview_7 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_8 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_9 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_9, %alloc_8 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_10 = memref.alloc() : memref<8x32xi16>
    %alloc_11 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_11) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_8, %arg1, %alloc_11) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_12 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_13 = memref.alloc() : memref<8x32xi32>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_12, %alloc_14 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_14, %alloc_11, %alloc_13) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_15 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_13, %subview_15 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_16 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_17 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_17, %alloc_16 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_18 = memref.alloc() : memref<8x32xi16>
    %alloc_19 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_19) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_16, %arg1, %alloc_19) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_20 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_21 = memref.alloc() : memref<8x32xi32>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_20, %alloc_22 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_22, %alloc_19, %alloc_21) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_23 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_21, %subview_23 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_24 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_25 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_25, %alloc_24 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_26 = memref.alloc() : memref<8x32xi16>
    %alloc_27 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_27) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_24, %arg1, %alloc_27) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_28 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_29 = memref.alloc() : memref<8x32xi32>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_28, %alloc_30 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_30, %alloc_27, %alloc_29) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_31 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_29, %subview_31 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi32> to memref<32x32xi32>
    return
  }
  func.func @gemm_0_0_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi32>
    %alloc_0 = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc_0) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi32> to memref<32x32xi32>
    %alloc_1 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_1 : memref<32x32xi32>)
    %alloc_2 = memref.alloc() {name = "A_0"} : memref<8x32xi16>
    %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    memref.copy %subview, %alloc_2 {to = "A_0"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
    %alloc_3 = memref.alloc() : memref<8x32xi16>
    %alloc_4 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_4) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_2, %arg1, %alloc_4) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_5 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    %alloc_7 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_5, %alloc_7 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_7, %alloc_4, %alloc_6) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_8 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_6, %subview_8 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_9 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_10 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_10, %alloc_9 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_11 = memref.alloc() : memref<8x32xi16>
    %alloc_12 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_12) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_9, %arg1, %alloc_12) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_13 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    %alloc_15 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_13, %alloc_15 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_15, %alloc_12, %alloc_14) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_16 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_14, %subview_16 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_17 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_18 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_18, %alloc_17 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_19 = memref.alloc() : memref<8x32xi16>
    %alloc_20 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_20) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_17, %arg1, %alloc_20) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_21 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    %alloc_23 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_21, %alloc_23 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_23, %alloc_20, %alloc_22) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_24 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_22, %subview_24 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_25 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_26 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_26, %alloc_25 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_27 = memref.alloc() : memref<8x32xi16>
    %alloc_28 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_28) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_25, %arg1, %alloc_28) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_29 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    %alloc_31 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_29, %alloc_31 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_31, %alloc_28, %alloc_30) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_32 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_30, %subview_32 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_0_1_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi32>
    %alloc_0 = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc_0) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi32> to memref<32x32xi32>
    %alloc_1 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_1 : memref<32x32xi32>)
    %alloc_2 = memref.alloc() {name = "A_0"} : memref<8x32xi16>
    %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    memref.copy %subview, %alloc_2 {to = "A_0"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
    %alloc_3 = memref.alloc() : memref<8x32xi16>
    %alloc_4 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_4) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_2, %arg1, %alloc_4) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_5 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    %alloc_7 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_5, %alloc_7 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_7, %alloc_4, %alloc_6) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_8 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_6, %subview_8 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_9 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_10 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_10, %alloc_9 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_11 = memref.alloc() : memref<8x32xi16>
    %alloc_12 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_12) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_9, %arg1, %alloc_12) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_13 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    %alloc_15 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_13, %alloc_15 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_15, %alloc_12, %alloc_14) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_16 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_14, %subview_16 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_17 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_18 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_18, %alloc_17 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_19 = memref.alloc() : memref<8x32xi16>
    %alloc_20 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_20) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_17, %arg1, %alloc_20) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_21 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    %alloc_23 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_21, %alloc_23 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_23, %alloc_20, %alloc_22) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_24 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_22, %subview_24 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_25 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_26 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_26, %alloc_25 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_27 = memref.alloc() : memref<8x32xi16>
    %alloc_28 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_28) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_25, %arg1, %alloc_28) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_29 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    %alloc_31 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_29, %alloc_31 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_31, %alloc_28, %alloc_30) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_32 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_30, %subview_32 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_0_1_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %c0_i16 = arith.constant 0 : i16
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() {name = "C_in"} : memref<32x32xi32>
    %alloc_0 = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc_0) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    memref.copy %alloc_0, %alloc {to = "C_in"} : memref<32x32xi32> to memref<32x32xi32>
    %alloc_1 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_1 : memref<32x32xi32>)
    %alloc_2 = memref.alloc() {name = "A_0"} : memref<8x32xi16>
    %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
    memref.copy %subview, %alloc_2 {to = "A_0"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
    %alloc_3 = memref.alloc() : memref<8x32xi16>
    %alloc_4 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_4) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_2, %arg1, %alloc_4) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_5 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    %alloc_7 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_5, %alloc_7 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_7, %alloc_4, %alloc_6) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_8 = memref.subview %alloc_1[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_6, %subview_8 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_9 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_10 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_10, %alloc_9 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_11 = memref.alloc() : memref<8x32xi16>
    %alloc_12 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_12) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_9, %arg1, %alloc_12) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_13 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    %alloc_15 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_13, %alloc_15 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_15, %alloc_12, %alloc_14) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_16 = memref.subview %alloc_1[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_14, %subview_16 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_17 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_18 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_18, %alloc_17 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_19 = memref.alloc() : memref<8x32xi16>
    %alloc_20 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_20) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_17, %arg1, %alloc_20) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_21 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    %alloc_23 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_21, %alloc_23 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_23, %alloc_20, %alloc_22) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_24 = memref.subview %alloc_1[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_22, %subview_24 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_25 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_26 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_26, %alloc_25 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_27 = memref.alloc() : memref<8x32xi16>
    %alloc_28 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_28) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_25, %arg1, %alloc_28) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_29 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    %alloc_31 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_29, %alloc_31 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_31, %alloc_28, %alloc_30) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_32 = memref.subview %alloc_1[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_30, %subview_32 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    allo.stream_put(%arg3, [], %alloc_1) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_1_0_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
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
    %alloc_3 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_3) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_1, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_4 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_5 = memref.alloc() : memref<8x32xi32>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_4, %alloc_6 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_7 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_5, %subview_7 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_8 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_9 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_9, %alloc_8 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_10 = memref.alloc() : memref<8x32xi16>
    %alloc_11 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_11) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_8, %arg1, %alloc_11) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_12 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_13 = memref.alloc() : memref<8x32xi32>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_12, %alloc_14 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_14, %alloc_11, %alloc_13) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_15 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_13, %subview_15 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_16 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_17 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_17, %alloc_16 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_18 = memref.alloc() : memref<8x32xi16>
    %alloc_19 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_19) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_16, %arg1, %alloc_19) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_20 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_21 = memref.alloc() : memref<8x32xi32>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_20, %alloc_22 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_22, %alloc_19, %alloc_21) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_23 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_21, %subview_23 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_24 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_25 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_25, %alloc_24 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_26 = memref.alloc() : memref<8x32xi16>
    %alloc_27 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_27) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_24, %arg1, %alloc_27) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_28 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_29 = memref.alloc() : memref<8x32xi32>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_28, %alloc_30 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_30, %alloc_27, %alloc_29) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_31 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_29, %subview_31 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi32> to memref<32x32xi32>
    return
  }
  func.func @gemm_1_1_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
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
    %alloc_3 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_3) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_1, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_4 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_5 = memref.alloc() : memref<8x32xi32>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_4, %alloc_6 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_7 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_5, %subview_7 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_8 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_9 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_9, %alloc_8 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_10 = memref.alloc() : memref<8x32xi16>
    %alloc_11 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_11) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_8, %arg1, %alloc_11) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_12 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_13 = memref.alloc() : memref<8x32xi32>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_12, %alloc_14 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_14, %alloc_11, %alloc_13) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_15 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_13, %subview_15 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_16 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_17 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_17, %alloc_16 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_18 = memref.alloc() : memref<8x32xi16>
    %alloc_19 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_19) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_16, %arg1, %alloc_19) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_20 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_21 = memref.alloc() : memref<8x32xi32>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_20, %alloc_22 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_22, %alloc_19, %alloc_21) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_23 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_21, %subview_23 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_24 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_25 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_25, %alloc_24 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_26 = memref.alloc() : memref<8x32xi16>
    %alloc_27 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_27) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_24, %arg1, %alloc_27) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_28 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_29 = memref.alloc() : memref<8x32xi32>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_28, %alloc_30 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_30, %alloc_27, %alloc_29) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_31 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_29, %subview_31 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_0, %arg2 {to = "local_C"} : memref<32x32xi32> to memref<32x32xi32>
    return
  }
  func.func @gemm_1_1_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
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
    %alloc_3 = memref.alloc() {name = "C_0"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_3) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_1, %arg1, %alloc_3) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_4 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_5 = memref.alloc() : memref<8x32xi32>
    %alloc_6 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_4, %alloc_6 : memref<8x32xi32, strided<[32, 1]>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_6, %alloc_3, %alloc_5) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_7 = memref.subview %alloc_0[0, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    memref.copy %alloc_5, %subview_7 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1]>>
    %alloc_8 = memref.alloc() {name = "A_1"} : memref<8x32xi16>
    %subview_9 = memref.subview %arg0[8, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 256>>
    memref.copy %subview_9, %alloc_8 {to = "A_1"} : memref<8x32xi16, strided<[32, 1], offset: 256>> to memref<8x32xi16>
    %alloc_10 = memref.alloc() : memref<8x32xi16>
    %alloc_11 = memref.alloc() {name = "C_1"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_11) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_8, %arg1, %alloc_11) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_12 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_13 = memref.alloc() : memref<8x32xi32>
    %alloc_14 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_12, %alloc_14 : memref<8x32xi32, strided<[32, 1], offset: 256>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_14, %alloc_11, %alloc_13) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_15 = memref.subview %alloc_0[8, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    memref.copy %alloc_13, %subview_15 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 256>>
    %alloc_16 = memref.alloc() {name = "A_2"} : memref<8x32xi16>
    %subview_17 = memref.subview %arg0[16, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 512>>
    memref.copy %subview_17, %alloc_16 {to = "A_2"} : memref<8x32xi16, strided<[32, 1], offset: 512>> to memref<8x32xi16>
    %alloc_18 = memref.alloc() : memref<8x32xi16>
    %alloc_19 = memref.alloc() {name = "C_2"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_19) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_16, %arg1, %alloc_19) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_20 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_21 = memref.alloc() : memref<8x32xi32>
    %alloc_22 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_20, %alloc_22 : memref<8x32xi32, strided<[32, 1], offset: 512>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_22, %alloc_19, %alloc_21) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_23 = memref.subview %alloc_0[16, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    memref.copy %alloc_21, %subview_23 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 512>>
    %alloc_24 = memref.alloc() {name = "A_3"} : memref<8x32xi16>
    %subview_25 = memref.subview %arg0[24, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1], offset: 768>>
    memref.copy %subview_25, %alloc_24 {to = "A_3"} : memref<8x32xi16, strided<[32, 1], offset: 768>> to memref<8x32xi16>
    %alloc_26 = memref.alloc() : memref<8x32xi16>
    %alloc_27 = memref.alloc() {name = "C_3"} : memref<8x32xi32>
    call @fill_zeros_i32_8_32_vector(%alloc_27) {lib = "fill_zeros_i32_8_32_vector"} : (memref<8x32xi32>) -> ()
    call @matmul_scalar_i16_i32(%alloc_24, %arg1, %alloc_27) {lib = "matmul_scalar_i16_i32"} : (memref<8x32xi16>, memref<32x32xi16>, memref<8x32xi32>) -> ()
    %subview_28 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] {from = "C_out"} : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    %alloc_29 = memref.alloc() : memref<8x32xi32>
    %alloc_30 = memref.alloc() : memref<8x32xi32>
    memref.copy %subview_28, %alloc_30 : memref<8x32xi32, strided<[32, 1], offset: 768>> to memref<8x32xi32>
    call @add_i32_vector(%alloc_30, %alloc_27, %alloc_29) {lib = "add_i32_vector"} : (memref<8x32xi32>, memref<8x32xi32>, memref<8x32xi32>) -> ()
    %subview_31 = memref.subview %alloc_0[24, 0] [8, 32] [1, 1] : memref<32x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
    memref.copy %alloc_29, %subview_31 {to = "C_out"} : memref<8x32xi32> to memref<8x32xi32, strided<[32, 1], offset: 768>>
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

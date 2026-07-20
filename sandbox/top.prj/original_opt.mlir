module {
  func.func private @fill_zeros_i32_32_32_vector(memref<32x32xi32>)
  func.func @gemm_0_0_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___o", tag = "gemm_(None, (), (), None)"} {
    %alloc = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    %alloc_0 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_0 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %0 = affine.load %alloc_0[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_2 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %0, %alloc_2[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %2 = affine.load %alloc_1[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %3 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %4 = arith.muli %2, %3 : i16
            %5 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
            %6 = arith.extsi %4 : i16 to i32
            %7 = arith.addi %5, %6 : i32
            affine.store %7, %alloc_2[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %1 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
          affine.store %1, %alloc_0[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_0) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_1_0_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, itypes = "sss_", otypes = "", stypes = "___i", tag = "gemm_((), None, None, ())"} {
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi32>, 2> -> memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%0 : memref<32x32xi32>) outs(%arg2 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %1 = affine.load %arg2[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_0 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %1, %alloc_0[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %3 = affine.load %alloc[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %4 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %5 = arith.muli %3, %4 : i16
            %6 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
            %7 = arith.extsi %5 : i16 to i32
            %8 = arith.addi %6, %7 : i32
            affine.store %8, %alloc_0[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %2 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
          affine.store %2, %arg2[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
    return
  }
  func.func @gemm_0_0_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %alloc = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    %alloc_0 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_0 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %0 = affine.load %alloc_0[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_2 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %0, %alloc_2[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %2 = affine.load %alloc_1[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %3 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %4 = arith.muli %2, %3 : i16
            %5 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
            %6 = arith.extsi %4 : i16 to i32
            %7 = arith.addi %5, %6 : i32
            affine.store %7, %alloc_2[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %1 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
          affine.store %1, %alloc_0[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_0) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_0_1_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %alloc = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    %alloc_0 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_0 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %0 = affine.load %alloc_0[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_2 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %0, %alloc_2[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %2 = affine.load %alloc_1[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %3 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %4 = arith.muli %2, %3 : i16
            %5 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
            %6 = arith.extsi %4 : i16 to i32
            %7 = arith.addi %5, %6 : i32
            affine.store %7, %alloc_2[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %1 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
          affine.store %1, %alloc_0[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_0) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_0_1_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %alloc = memref.alloc() : memref<32x32xi32>
    call @fill_zeros_i32_32_32_vector(%alloc) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
    %alloc_0 = memref.alloc() {name = "C_out"} : memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%alloc : memref<32x32xi32>) outs(%alloc_0 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc_1 = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc_1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %0 = affine.load %alloc_0[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_2 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %0, %alloc_2[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %2 = affine.load %alloc_1[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %3 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %4 = arith.muli %2, %3 : i16
            %5 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
            %6 = arith.extsi %4 : i16 to i32
            %7 = arith.addi %5, %6 : i32
            affine.store %7, %alloc_2[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %1 = affine.load %alloc_2[] {from = "acc"} : memref<i32>
          affine.store %1, %alloc_0[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
    allo.stream_put(%arg3, [], %alloc_0) : !allo.stream<memref<32x32xi32>, 2> contains memref<32x32xi32>
    return
  }
  func.func @gemm_1_0_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi32>, 2> -> memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%0 : memref<32x32xi32>) outs(%arg2 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %1 = affine.load %arg2[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_0 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %1, %alloc_0[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %3 = affine.load %alloc[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %4 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %5 = arith.muli %3, %4 : i16
            %6 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
            %7 = arith.extsi %5 : i16 to i32
            %8 = arith.addi %6, %7 : i32
            affine.store %8, %alloc_0[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %2 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
          affine.store %2, %arg2[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
    return
  }
  func.func @gemm_1_1_0(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi32>, 2> -> memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%0 : memref<32x32xi32>) outs(%arg2 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %1 = affine.load %arg2[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_0 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %1, %alloc_0[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %3 = affine.load %alloc[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %4 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %5 = arith.muli %3, %4 : i16
            %6 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
            %7 = arith.extsi %5 : i16 to i32
            %8 = arith.addi %6, %7 : i32
            affine.store %8, %alloc_0[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %2 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
          affine.store %2, %arg2[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
    return
  }
  func.func @gemm_1_1_1(%arg0: memref<32x32xi16>, %arg1: memref<32x32xi16>, %arg2: memref<32x32xi32>, %arg3: !allo.stream<memref<32x32xi32>, 2>) attributes {df.kernel, input_depth = [0, 0, 0, 0], output_depth = []} {
    %0 = allo.stream_get(%arg3, []) : !allo.stream<memref<32x32xi32>, 2> -> memref<32x32xi32>
    linalg.copy {cast = #linalg.type_fn<cast_signed>} ins(%0 : memref<32x32xi32>) outs(%arg2 : memref<32x32xi32>)
    affine.for %arg4 = 0 to 4 {
      %alloc = memref.alloc() {name = "A_sub"} : memref<8x32xi16>
      %subview = memref.subview %arg0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %alloc {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      affine.for %arg5 = 0 to 8 {
        affine.for %arg6 = 0 to 32 {
          %1 = affine.load %arg2[%arg4 * 8 + %arg5, %arg6] {from = "C_out"} : memref<32x32xi32>
          %alloc_0 = memref.alloc() {name = "acc"} : memref<i32>
          affine.store %1, %alloc_0[] {to = "acc"} : memref<i32>
          affine.for %arg7 = 0 to 32 {
            %3 = affine.load %alloc[%arg5, %arg7] {from = "A_sub"} : memref<8x32xi16>
            %4 = affine.load %arg1[%arg7, %arg6] {from = "local_B"} : memref<32x32xi16>
            %5 = arith.muli %3, %4 : i16
            %6 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
            %7 = arith.extsi %5 : i16 to i32
            %8 = arith.addi %6, %7 : i32
            affine.store %8, %alloc_0[] {to = "acc"} : memref<i32>
          } {loop_name = "k", op_name = "S_k_0"}
          %2 = affine.load %alloc_0[] {from = "acc"} : memref<i32>
          affine.store %2, %arg2[%arg4 * 8 + %arg5, %arg6] {to = "C_out"} : memref<32x32xi32>
        } {loop_name = "j", op_name = "S_j_0"}
      } {loop_name = "i", op_name = "S_i_0"}
    } {loop_name = "r", op_name = "S_r_0"}
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

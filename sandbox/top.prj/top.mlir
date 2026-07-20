module {
  aie.device(npu1_4col) {
    func.func private @fill_zeros_i32_32_32_vector(memref<32x32xi32>)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %mem_tile_1_1 = aie.tile(1, 1)
    %mem_tile_2_1 = aie.tile(2, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_2_2 = aie.tile(2, 2)
    %tile_2_3 = aie.tile(2, 3)
    %tile_3_2 = aie.tile(3, 2)
    %tile_3_3 = aie.tile(3, 3)
    aie.objectfifo @pipe_0_0_0(%tile_0_3, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @pipe_0_0_1(%tile_1_3, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @pipe_0_1_0(%tile_2_3, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @pipe_0_1_1(%tile_3_3, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @fifo_0(%mem_tile_0_1, {%tile_1_3, %tile_0_3}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_1(%mem_tile_0_1, {%tile_0_2, %tile_1_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_2(%mem_tile_0_1, {%tile_3_3, %tile_2_3}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_3(%mem_tile_0_1, {%tile_3_2, %tile_2_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_4(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<2x2x32x32xi16>> 
    aie.objectfifo @fifo_5(%mem_tile_1_1, {%tile_0_3, %tile_2_3}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_6(%mem_tile_1_1, {%tile_3_3, %tile_1_3}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_7(%mem_tile_1_1, {%tile_2_2, %tile_0_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_8(%mem_tile_1_1, {%tile_1_2, %tile_3_2}, 2 : i32) : !aie.objectfifo<memref<32x32xi16>> 
    aie.objectfifo @fifo_9(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<2x2x32x32xi16>> 
    aie.objectfifo @fifo_10(%tile_0_2, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @fifo_11(%tile_1_2, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @fifo_12(%tile_2_2, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @fifo_13(%tile_3_2, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32x32xi32>> 
    aie.objectfifo @fifo_14(%mem_tile_2_1, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<2x2x32x32xi32>> 
    aie.objectfifo.link [@fifo_4] -> [@fifo_0, @fifo_1, @fifo_2, @fifo_3]([] [0, 1024, 2048, 3072])
    aie.objectfifo.link [@fifo_9] -> [@fifo_5, @fifo_6, @fifo_7, @fifo_8]([] [0, 1024, 2048, 3072])
    aie.objectfifo.link [@fifo_10, @fifo_11, @fifo_12, @fifo_13] -> [@fifo_14]([0, 1024, 2048, 3072] [])
    %buffer_0_3 = aie.buffer(%tile_0_3) : memref<32x32xi32> 
    %buffer_0_3_0 = aie.buffer(%tile_0_3) : memref<8x32xi16> 
    %buffer_0_3_1 = aie.buffer(%tile_0_3) : memref<i32> 
    %buffer_0_2 = aie.buffer(%tile_0_2) : memref<32x32xi32> 
    %buffer_0_2_2 = aie.buffer(%tile_0_2) : memref<8x32xi16> 
    %buffer_0_2_3 = aie.buffer(%tile_0_2) : memref<i32> 
    %buffer_1_3 = aie.buffer(%tile_1_3) : memref<32x32xi32> 
    %buffer_1_3_4 = aie.buffer(%tile_1_3) : memref<8x32xi16> 
    %buffer_1_3_5 = aie.buffer(%tile_1_3) : memref<i32> 
    %buffer_2_3 = aie.buffer(%tile_2_3) : memref<32x32xi32> 
    %buffer_2_3_6 = aie.buffer(%tile_2_3) : memref<8x32xi16> 
    %buffer_2_3_7 = aie.buffer(%tile_2_3) : memref<i32> 
    %buffer_3_3 = aie.buffer(%tile_3_3) : memref<32x32xi32> 
    %buffer_3_3_8 = aie.buffer(%tile_3_3) : memref<8x32xi16> 
    %buffer_3_3_9 = aie.buffer(%tile_3_3) : memref<i32> 
    %buffer_1_2 = aie.buffer(%tile_1_2) : memref<32x32xi32> 
    %buffer_1_2_10 = aie.buffer(%tile_1_2) : memref<8x32xi16> 
    %buffer_1_2_11 = aie.buffer(%tile_1_2) : memref<i32> 
    %buffer_2_2 = aie.buffer(%tile_2_2) : memref<32x32xi32> 
    %buffer_2_2_12 = aie.buffer(%tile_2_2) : memref<8x32xi16> 
    %buffer_2_2_13 = aie.buffer(%tile_2_2) : memref<i32> 
    %buffer_3_2 = aie.buffer(%tile_3_2) : memref<32x32xi32> 
    %buffer_3_2_14 = aie.buffer(%tile_3_2) : memref<8x32xi16> 
    %buffer_3_2_15 = aie.buffer(%tile_3_2) : memref<i32> 
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        func.call @fill_zeros_i32_32_32_vector(%buffer_0_3) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
        %0 = aie.objectfifo.acquire @pipe_0_0_0(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %6 = affine.load %buffer_0_3[%arg1, %arg2] : memref<32x32xi32>
            affine.store %6, %1[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %2 = aie.objectfifo.acquire @fifo_0(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %4 = aie.objectfifo.acquire @fifo_5(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %3[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_0_3_0 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %6 = affine.load %1[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %6, %buffer_0_3_1[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %8 = affine.load %buffer_0_3_0[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %9 = affine.load %5[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %10 = arith.muli %8, %9 : i16
                %11 = affine.load %buffer_0_3_1[] {from = "acc"} : memref<i32>
                %12 = arith.extsi %10 : i16 to i32
                %13 = arith.addi %11, %12 : i32
                affine.store %13, %buffer_0_3_1[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %7 = affine.load %buffer_0_3_1[] {from = "acc"} : memref<i32>
              affine.store %7, %1[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_0_0(Produce, 1)
        aie.objectfifo.release @fifo_0(Consume, 1)
        aie.objectfifo.release @fifo_5(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_0_0_0(Consume, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        %2 = aie.objectfifo.acquire @fifo_10(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %8 = affine.load %1[%arg1, %arg2] : memref<32x32xi32>
            affine.store %8, %3[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %4 = aie.objectfifo.acquire @fifo_1(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %6 = aie.objectfifo.acquire @fifo_7(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %5[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_0_2_2 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %8 = affine.load %3[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %8, %buffer_0_2_3[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %10 = affine.load %buffer_0_2_2[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %11 = affine.load %7[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %12 = arith.muli %10, %11 : i16
                %13 = affine.load %buffer_0_2_3[] {from = "acc"} : memref<i32>
                %14 = arith.extsi %12 : i16 to i32
                %15 = arith.addi %13, %14 : i32
                affine.store %15, %buffer_0_2_3[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %9 = affine.load %buffer_0_2_3[] {from = "acc"} : memref<i32>
              affine.store %9, %3[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_0_0(Consume, 1)
        aie.objectfifo.release @fifo_1(Consume, 1)
        aie.objectfifo.release @fifo_7(Consume, 1)
        aie.objectfifo.release @fifo_10(Produce, 1)
      }
      aie.end
    }
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        func.call @fill_zeros_i32_32_32_vector(%buffer_1_3) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
        %0 = aie.objectfifo.acquire @pipe_0_0_1(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %6 = affine.load %buffer_1_3[%arg1, %arg2] : memref<32x32xi32>
            affine.store %6, %1[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %2 = aie.objectfifo.acquire @fifo_0(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %4 = aie.objectfifo.acquire @fifo_6(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %3[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_1_3_4 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %6 = affine.load %1[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %6, %buffer_1_3_5[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %8 = affine.load %buffer_1_3_4[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %9 = affine.load %5[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %10 = arith.muli %8, %9 : i16
                %11 = affine.load %buffer_1_3_5[] {from = "acc"} : memref<i32>
                %12 = arith.extsi %10 : i16 to i32
                %13 = arith.addi %11, %12 : i32
                affine.store %13, %buffer_1_3_5[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %7 = affine.load %buffer_1_3_5[] {from = "acc"} : memref<i32>
              affine.store %7, %1[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_0_1(Produce, 1)
        aie.objectfifo.release @fifo_0(Consume, 1)
        aie.objectfifo.release @fifo_6(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        func.call @fill_zeros_i32_32_32_vector(%buffer_2_3) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
        %0 = aie.objectfifo.acquire @pipe_0_1_0(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %6 = affine.load %buffer_2_3[%arg1, %arg2] : memref<32x32xi32>
            affine.store %6, %1[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %2 = aie.objectfifo.acquire @fifo_2(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %4 = aie.objectfifo.acquire @fifo_5(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %3[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_2_3_6 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %6 = affine.load %1[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %6, %buffer_2_3_7[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %8 = affine.load %buffer_2_3_6[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %9 = affine.load %5[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %10 = arith.muli %8, %9 : i16
                %11 = affine.load %buffer_2_3_7[] {from = "acc"} : memref<i32>
                %12 = arith.extsi %10 : i16 to i32
                %13 = arith.addi %11, %12 : i32
                affine.store %13, %buffer_2_3_7[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %7 = affine.load %buffer_2_3_7[] {from = "acc"} : memref<i32>
              affine.store %7, %1[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_1_0(Produce, 1)
        aie.objectfifo.release @fifo_2(Consume, 1)
        aie.objectfifo.release @fifo_5(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        func.call @fill_zeros_i32_32_32_vector(%buffer_3_3) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
        %0 = aie.objectfifo.acquire @pipe_0_1_1(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %6 = affine.load %buffer_3_3[%arg1, %arg2] : memref<32x32xi32>
            affine.store %6, %1[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %2 = aie.objectfifo.acquire @fifo_2(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %4 = aie.objectfifo.acquire @fifo_6(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %3[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_3_3_8 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %6 = affine.load %1[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %6, %buffer_3_3_9[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %8 = affine.load %buffer_3_3_8[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %9 = affine.load %5[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %10 = arith.muli %8, %9 : i16
                %11 = affine.load %buffer_3_3_9[] {from = "acc"} : memref<i32>
                %12 = arith.extsi %10 : i16 to i32
                %13 = arith.addi %11, %12 : i32
                affine.store %13, %buffer_3_3_9[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %7 = affine.load %buffer_3_3_9[] {from = "acc"} : memref<i32>
              affine.store %7, %1[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_1_1(Produce, 1)
        aie.objectfifo.release @fifo_2(Consume, 1)
        aie.objectfifo.release @fifo_6(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_0_0_1(Consume, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        %2 = aie.objectfifo.acquire @fifo_11(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %8 = affine.load %1[%arg1, %arg2] : memref<32x32xi32>
            affine.store %8, %3[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %4 = aie.objectfifo.acquire @fifo_1(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %6 = aie.objectfifo.acquire @fifo_8(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %5[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_1_2_10 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %8 = affine.load %3[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %8, %buffer_1_2_11[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %10 = affine.load %buffer_1_2_10[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %11 = affine.load %7[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %12 = arith.muli %10, %11 : i16
                %13 = affine.load %buffer_1_2_11[] {from = "acc"} : memref<i32>
                %14 = arith.extsi %12 : i16 to i32
                %15 = arith.addi %13, %14 : i32
                affine.store %15, %buffer_1_2_11[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %9 = affine.load %buffer_1_2_11[] {from = "acc"} : memref<i32>
              affine.store %9, %3[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_0_1(Consume, 1)
        aie.objectfifo.release @fifo_1(Consume, 1)
        aie.objectfifo.release @fifo_8(Consume, 1)
        aie.objectfifo.release @fifo_11(Produce, 1)
      }
      aie.end
    }
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_0_1_0(Consume, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        %2 = aie.objectfifo.acquire @fifo_12(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %8 = affine.load %1[%arg1, %arg2] : memref<32x32xi32>
            affine.store %8, %3[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %4 = aie.objectfifo.acquire @fifo_3(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %6 = aie.objectfifo.acquire @fifo_7(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %5[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_2_2_12 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %8 = affine.load %3[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %8, %buffer_2_2_13[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %10 = affine.load %buffer_2_2_12[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %11 = affine.load %7[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %12 = arith.muli %10, %11 : i16
                %13 = affine.load %buffer_2_2_13[] {from = "acc"} : memref<i32>
                %14 = arith.extsi %12 : i16 to i32
                %15 = arith.addi %13, %14 : i32
                affine.store %15, %buffer_2_2_13[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %9 = affine.load %buffer_2_2_13[] {from = "acc"} : memref<i32>
              affine.store %9, %3[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_1_0(Consume, 1)
        aie.objectfifo.release @fifo_3(Consume, 1)
        aie.objectfifo.release @fifo_7(Consume, 1)
        aie.objectfifo.release @fifo_12(Produce, 1)
      }
      aie.end
    }
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_0_1_1(Consume, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        %2 = aie.objectfifo.acquire @fifo_13(Produce, 1) : !aie.objectfifosubview<memref<32x32xi32>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32x32xi32>> -> memref<32x32xi32>
        affine.for %arg1 = 0 to 32 {
          affine.for %arg2 = 0 to 32 {
            %8 = affine.load %1[%arg1, %arg2] : memref<32x32xi32>
            affine.store %8, %3[%arg1, %arg2] : memref<32x32xi32>
          }
        }
        %4 = aie.objectfifo.acquire @fifo_3(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        %6 = aie.objectfifo.acquire @fifo_8(Consume, 1) : !aie.objectfifosubview<memref<32x32xi16>>
        %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<32x32xi16>> -> memref<32x32xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %5[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
          memref.copy %subview, %buffer_3_2_14 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
          affine.for %arg2 = 0 to 8 {
            affine.for %arg3 = 0 to 32 {
              %8 = affine.load %3[%arg1 * 8 + %arg2, %arg3] {from = "C_out"} : memref<32x32xi32>
              affine.store %8, %buffer_3_2_15[] {to = "acc"} : memref<i32>
              affine.for %arg4 = 0 to 32 {
                %10 = affine.load %buffer_3_2_14[%arg2, %arg4] {from = "A_sub"} : memref<8x32xi16>
                %11 = affine.load %7[%arg4, %arg3] {from = "local_B"} : memref<32x32xi16>
                %12 = arith.muli %10, %11 : i16
                %13 = affine.load %buffer_3_2_15[] {from = "acc"} : memref<i32>
                %14 = arith.extsi %12 : i16 to i32
                %15 = arith.addi %13, %14 : i32
                affine.store %15, %buffer_3_2_15[] {to = "acc"} : memref<i32>
              } {loop_name = "k", op_name = "S_k_0"}
              %9 = affine.load %buffer_3_2_15[] {from = "acc"} : memref<i32>
              affine.store %9, %3[%arg1 * 8 + %arg2, %arg3] {to = "C_out"} : memref<32x32xi32>
            } {loop_name = "j", op_name = "S_j_0"}
          } {loop_name = "i", op_name = "S_i_0"}
        } {loop_name = "r", op_name = "S_r_0"}
        aie.objectfifo.release @pipe_0_1_1(Consume, 1)
        aie.objectfifo.release @fifo_3(Consume, 1)
        aie.objectfifo.release @fifo_8(Consume, 1)
        aie.objectfifo.release @fifo_13(Produce, 1)
      }
      aie.end
    }
    aiex.runtime_sequence(%arg0: memref<4096xi16>, %arg1: memref<4096xi32>, %arg2: memref<4096xi16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][2, 2, 32, 32][2048, 32, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_4} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][2, 2, 32, 32][2048, 32, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_9} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][2, 2, 32, 32][2048, 32, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_14} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @fifo_14}
      aie.end
    }
  }
}

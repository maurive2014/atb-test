module {
  aie.device(npu1_4col) {
    func.func private @fill_zeros_i16_16_64_vector(memref<16x64xi16>)
    func.func private @matmul_scalar_i16_i16(memref<16x64xi16>, memref<64x64xi16>, memref<16x64xi16>)
    func.func private @matmul_i16_i16(memref<16x64xi16>, memref<64x64xi16>, memref<16x64xi16>)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %mem_tile_1_1 = aie.tile(1, 1)
    %mem_tile_2_1 = aie.tile(2, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    %tile_1_2 = aie.tile(1, 2)
    aie.objectfifo @pipe_c_0_src(%tile_0_4, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @pipe_c_0_dst(%mem_tile_0_1 dimensionsToStream [<size = 4, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo.link [@pipe_c_0_src] -> [@pipe_c_0_dst]([] [])
    aie.objectfifo @pipe_c_1_src(%tile_0_2, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @pipe_c_1_dst(%mem_tile_0_1 dimensionsToStream [<size = 4, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo.link [@pipe_c_1_src] -> [@pipe_c_1_dst]([] [])
    aie.objectfifo @pipe_c_2_src(%tile_0_5, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @pipe_c_2_dst(%mem_tile_0_1 dimensionsToStream [<size = 4, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo.link [@pipe_c_2_src] -> [@pipe_c_2_dst]([] [])
    aie.objectfifo @pipe_c_3_src(%tile_1_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @pipe_c_3_dst(%mem_tile_1_1 dimensionsToStream [<size = 4, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>], {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo.link [@pipe_c_3_src] -> [@pipe_c_3_dst]([] [])
    aie.objectfifo @fifo_0(%mem_tile_0_1 dimensionsToStream [<size = 4, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>], {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @fifo_1(%mem_tile_0_1 dimensionsToStream [<size = 4, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>], {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @fifo_2(%mem_tile_0_1 dimensionsToStream [<size = 4, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>], {%tile_0_5}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @fifo_3(%mem_tile_0_1 dimensionsToStream [<size = 4, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>], {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<16x64xi16>> 
    aie.objectfifo @fifo_4(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<1x4x16x64xi16>> 
    aie.objectfifo @fifo_5(%mem_tile_1_1 dimensionsToStream [<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>], {%tile_1_2, %tile_0_4, %tile_0_2, %tile_0_5}, 2 : i32) : !aie.objectfifo<memref<64x64xi16>> 
    aie.objectfifo @fifo_6(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<1x1x64x64xi16>> 
    aie.objectfifo @fifo_7(%tile_0_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<64x64xi16>> 
    aie.objectfifo @fifo_8(%mem_tile_2_1, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<1x1x64x64xi16>> 
    aie.objectfifo.link [@fifo_4] -> [@fifo_0, @fifo_1, @fifo_2, @fifo_3]([] [0, 1024, 2048, 3072])
    aie.objectfifo.link [@fifo_6] -> [@fifo_5]([] [])
    aie.objectfifo.link [@fifo_7] -> [@fifo_8]([] [])
    %buffer_0_3 = aie.buffer(%tile_0_3) : memref<4x16x64xi16> 
    %buffer_0_3_0 = aie.buffer(%tile_0_3) : memref<16x64xi16> 
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_c_0_src(Produce, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        func.call @fill_zeros_i16_16_64_vector(%1) {lib = "fill_zeros_i16_16_64_vector"} : (memref<16x64xi16>) -> ()
        %2 = aie.objectfifo.acquire @fifo_0(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        %4 = aie.objectfifo.acquire @fifo_5(Consume, 1) : !aie.objectfifosubview<memref<64x64xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xi16>> -> memref<64x64xi16>
        func.call @matmul_i16_i16(%3, %5, %1) : (memref<16x64xi16>, memref<64x64xi16>, memref<16x64xi16>) -> ()
        aie.objectfifo.release @pipe_c_0_src(Produce, 1)
        aie.objectfifo.release @fifo_0(Consume, 1)
        aie.objectfifo.release @fifo_5(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c4 = arith.constant 4 : index
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        scf.for %arg1 = %c0 to %c4 step %c1 {
          %2 = scf.index_switch %arg1 -> memref<16x64xi16> 
          case 1 {
            %3 = aie.objectfifo.acquire @pipe_c_1_dst(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
            %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
            scf.yield %4 : memref<16x64xi16>
          }
          case 2 {
            %3 = aie.objectfifo.acquire @pipe_c_2_dst(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
            %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
            scf.yield %4 : memref<16x64xi16>
          }
          case 3 {
            %3 = aie.objectfifo.acquire @pipe_c_3_dst(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
            %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
            scf.yield %4 : memref<16x64xi16>
          }
          default {
            %3 = aie.objectfifo.acquire @pipe_c_0_dst(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
            %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
            scf.yield %4 : memref<16x64xi16>
          }
          memref.copy %2, %buffer_0_3_0 : memref<16x64xi16> to memref<16x64xi16>
          scf.index_switch %arg1 
          case 1 {
            aie.objectfifo.release @pipe_c_1_dst(Consume, 1)
            scf.yield
          }
          case 2 {
            aie.objectfifo.release @pipe_c_2_dst(Consume, 1)
            scf.yield
          }
          case 3 {
            aie.objectfifo.release @pipe_c_3_dst(Consume, 1)
            scf.yield
          }
          default {
            aie.objectfifo.release @pipe_c_0_dst(Consume, 1)
          }
          %subview = memref.subview %buffer_0_3[%arg1, 0, 0] [1, 16, 64] [1, 1, 1] : memref<4x16x64xi16> to memref<16x64xi16, strided<[64, 1], offset: ?>>
          memref.copy %buffer_0_3_0, %subview : memref<16x64xi16> to memref<16x64xi16, strided<[64, 1], offset: ?>>
        } {loop_name = "gather0", op_name = "S_gather_0"}
        %0 = aie.objectfifo.acquire @fifo_7(Produce, 1) : !aie.objectfifosubview<memref<64x64xi16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<64x64xi16>> -> memref<64x64xi16>
        affine.for %arg1 = 0 to 4 {
          %subview = memref.subview %buffer_0_3[%arg1, 0, 0] [1, 16, 64] [1, 1, 1] {from = "c_tiles"} : memref<4x16x64xi16> to memref<16x64xi16, strided<[64, 1], offset: ?>>
          %subview_1 = memref.subview %1[0, 0] [16, 64] [1, 1] : memref<64x64xi16> to memref<16x64xi16, strided<[64, 1]>>
          memref.copy %subview, %subview_1 {to = "local_C"} : memref<16x64xi16, strided<[64, 1], offset: ?>> to memref<16x64xi16, strided<[64, 1]>>
        } {loop_name = "i", op_name = "S_i_1"}
        aie.objectfifo.release @fifo_7(Produce, 1)
      }
      aie.end
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_c_1_src(Produce, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        func.call @fill_zeros_i16_16_64_vector(%1) {lib = "fill_zeros_i16_16_64_vector"} : (memref<16x64xi16>) -> ()
        %2 = aie.objectfifo.acquire @fifo_1(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        %4 = aie.objectfifo.acquire @fifo_5(Consume, 1) : !aie.objectfifosubview<memref<64x64xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xi16>> -> memref<64x64xi16>
        func.call @matmul_i16_i16(%3, %5, %1) : (memref<16x64xi16>, memref<64x64xi16>, memref<16x64xi16>) -> ()
        aie.objectfifo.release @pipe_c_1_src(Produce, 1)
        aie.objectfifo.release @fifo_1(Consume, 1)
        aie.objectfifo.release @fifo_5(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_c_2_src(Produce, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        func.call @fill_zeros_i16_16_64_vector(%1) {lib = "fill_zeros_i16_16_64_vector"} : (memref<16x64xi16>) -> ()
        %2 = aie.objectfifo.acquire @fifo_2(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        %4 = aie.objectfifo.acquire @fifo_5(Consume, 1) : !aie.objectfifosubview<memref<64x64xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xi16>> -> memref<64x64xi16>
        func.call @matmul_i16_i16(%3, %5, %1) : (memref<16x64xi16>, memref<64x64xi16>, memref<16x64xi16>) -> ()
        aie.objectfifo.release @pipe_c_2_src(Produce, 1)
        aie.objectfifo.release @fifo_2(Consume, 1)
        aie.objectfifo.release @fifo_5(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @pipe_c_3_src(Produce, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        func.call @fill_zeros_i16_16_64_vector(%1) {lib = "fill_zeros_i16_16_64_vector"} : (memref<16x64xi16>) -> ()
        %2 = aie.objectfifo.acquire @fifo_3(Consume, 1) : !aie.objectfifosubview<memref<16x64xi16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<16x64xi16>> -> memref<16x64xi16>
        %4 = aie.objectfifo.acquire @fifo_5(Consume, 1) : !aie.objectfifosubview<memref<64x64xi16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<64x64xi16>> -> memref<64x64xi16>
        func.call @matmul_i16_i16(%3, %5, %1) : (memref<16x64xi16>, memref<64x64xi16>, memref<16x64xi16>) -> ()
        aie.objectfifo.release @pipe_c_3_src(Produce, 1)
        aie.objectfifo.release @fifo_3(Consume, 1)
        aie.objectfifo.release @fifo_5(Consume, 1)
      }
      aie.end
    } {link_with = "external0.o"}
    aiex.runtime_sequence(%arg0: memref<4096xi16>, %arg1: memref<4096xi16>, %arg2: memref<4096xi16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 4, 16, 64][0, 1024, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_4} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 64, 64][0, 0, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_6} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 64, 64][0, 0, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_8} : memref<4096xi16>
      aiex.npu.dma_wait {symbol = @fifo_8}
      aie.end
    }
  }
}

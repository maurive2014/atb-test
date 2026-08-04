module {
  aie.device(npu1_4col) {
    memref.global "public" @fifo_5_cons : memref<1x1x64x64xi16>
    memref.global "public" @fifo_5 : memref<1x1x64x64xi16>
    memref.global "public" @fifo_4_cons : memref<64x64xi16>
    memref.global "public" @fifo_4 : memref<64x64xi16>
    memref.global "public" @fifo_3_cons : memref<1x1x32x64xi16>
    memref.global "public" @fifo_3 : memref<1x1x32x64xi16>
    memref.global "public" @fifo_2_cons : memref<32x64xi16>
    memref.global "public" @fifo_2 : memref<32x64xi16>
    memref.global "public" @fifo_1_cons : memref<1x1x64x64xi16>
    memref.global "public" @fifo_1 : memref<1x1x64x64xi16>
    memref.global "public" @fifo_0_cons : memref<64x64xi16>
    memref.global "public" @fifo_0 : memref<64x64xi16>
    memref.global "public" @pipe_c_0_dst_cons : memref<32x64xi16>
    memref.global "public" @pipe_c_0_dst : memref<32x64xi16>
    memref.global "public" @pipe_c_0_src_cons : memref<32x64xi16>
    memref.global "public" @pipe_c_0_src : memref<32x64xi16>
    memref.global "public" @pipe_b_0_dst_cons : memref<64x64xi16>
    memref.global "public" @pipe_b_0_dst : memref<64x64xi16>
    memref.global "public" @pipe_b_0_src_cons : memref<64x64xi16>
    memref.global "public" @pipe_b_0_src : memref<64x64xi16>
    func.func private @fill_zeros_i16_32_64_vector(memref<32x64xi16>)
    func.func private @matmul_scalar_i16_i16(memref<32x64xi16>, memref<64x64xi16>, memref<32x64xi16>)
    func.func private @matmul_i16_i16(memref<32x64xi16>, memref<64x64xi16>, memref<32x64xi16>)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %fifo_5_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 1 : i32, sym_name = "fifo_5_cons_prod_lock_0"}
    %fifo_5_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "fifo_5_cons_cons_lock_0"}
    %fifo_4_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, sym_name = "fifo_4_cons_buff_0"} : memref<64x64xi16> 
    %fifo_4_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 8192 : i32, sym_name = "fifo_4_cons_buff_1"} : memref<64x64xi16> 
    %fifo_4_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "fifo_4_cons_prod_lock_0"}
    %fifo_4_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "fifo_4_cons_cons_lock_0"}
    %fifo_4_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, sym_name = "fifo_4_buff_0"} : memref<64x64xi16> 
    %fifo_4_buff_1 = aie.buffer(%tile_0_2) {address = 9216 : i32, sym_name = "fifo_4_buff_1"} : memref<64x64xi16> 
    %fifo_4_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "fifo_4_prod_lock_0"}
    %fifo_4_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "fifo_4_cons_lock_0"}
    %fifo_3_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, sym_name = "fifo_3_cons_buff_0"} : memref<1x1x32x64xi16> 
    %fifo_3_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 4096 : i32, sym_name = "fifo_3_cons_buff_1"} : memref<1x1x32x64xi16> 
    %fifo_3_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "fifo_3_cons_prod_lock_0"}
    %fifo_3_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "fifo_3_cons_cons_lock_0"}
    %fifo_3_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "fifo_3_prod_lock_0"}
    %fifo_3_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "fifo_3_cons_lock_0"}
    %fifo_2_cons_buff_0 = aie.buffer(%tile_0_3) {address = 17408 : i32, sym_name = "fifo_2_cons_buff_0"} : memref<32x64xi16> 
    %fifo_2_cons_buff_1 = aie.buffer(%tile_0_3) {address = 21504 : i32, sym_name = "fifo_2_cons_buff_1"} : memref<32x64xi16> 
    %fifo_2_cons_prod_lock_0 = aie.lock(%tile_0_3, 4) {init = 2 : i32, sym_name = "fifo_2_cons_prod_lock_0"}
    %fifo_2_cons_cons_lock_0 = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "fifo_2_cons_cons_lock_0"}
    %fifo_1_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "fifo_1_cons_buff_0"} : memref<1x1x64x64xi16> 
    %fifo_1_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 8192 : i32, sym_name = "fifo_1_cons_buff_1"} : memref<1x1x64x64xi16> 
    %fifo_1_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 4) {init = 2 : i32, sym_name = "fifo_1_cons_prod_lock_0"}
    %fifo_1_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "fifo_1_cons_cons_lock_0"}
    %fifo_1_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "fifo_1_prod_lock_0"}
    %fifo_1_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "fifo_1_cons_lock_0"}
    %fifo_0_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, sym_name = "fifo_0_cons_buff_0"} : memref<64x64xi16> 
    %fifo_0_cons_buff_1 = aie.buffer(%tile_0_4) {address = 9216 : i32, sym_name = "fifo_0_cons_buff_1"} : memref<64x64xi16> 
    %fifo_0_cons_prod_lock_0 = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "fifo_0_cons_prod_lock_0"}
    %fifo_0_cons_cons_lock_0 = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "fifo_0_cons_cons_lock_0"}
    %pipe_c_0_dst_cons_buff_0 = aie.buffer(%tile_0_2) {address = 25600 : i32, sym_name = "pipe_c_0_dst_cons_buff_0"} : memref<32x64xi16> 
    %pipe_c_0_dst_cons_buff_1 = aie.buffer(%tile_0_2) {address = 29696 : i32, sym_name = "pipe_c_0_dst_cons_buff_1"} : memref<32x64xi16> 
    %pipe_c_0_dst_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "pipe_c_0_dst_cons_prod_lock_0"}
    %pipe_c_0_dst_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "pipe_c_0_dst_cons_cons_lock_0"}
    %pipe_c_0_src_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 24576 : i32, sym_name = "pipe_c_0_src_cons_buff_0"} : memref<32x64xi16> 
    %pipe_c_0_src_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 28672 : i32, sym_name = "pipe_c_0_src_cons_buff_1"} : memref<32x64xi16> 
    %pipe_c_0_src_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "pipe_c_0_src_cons_prod_lock_0"}
    %pipe_c_0_src_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "pipe_c_0_src_cons_cons_lock_0"}
    %pipe_c_0_src_buff_0 = aie.buffer(%tile_0_3) {address = 25600 : i32, sym_name = "pipe_c_0_src_buff_0"} : memref<32x64xi16> 
    %pipe_c_0_src_buff_1 = aie.buffer(%tile_0_3) {address = 29696 : i32, sym_name = "pipe_c_0_src_buff_1"} : memref<32x64xi16> 
    %pipe_c_0_src_prod_lock_0 = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "pipe_c_0_src_prod_lock_0"}
    %pipe_c_0_src_cons_lock_0 = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "pipe_c_0_src_cons_lock_0"}
    %pipe_b_0_dst_cons_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, sym_name = "pipe_b_0_dst_cons_buff_0"} : memref<64x64xi16> 
    %pipe_b_0_dst_cons_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 1 : i32, sym_name = "pipe_b_0_dst_cons_prod_lock_0"}
    %pipe_b_0_dst_cons_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "pipe_b_0_dst_cons_cons_lock_0"}
    %pipe_b_0_src_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 16384 : i32, sym_name = "pipe_b_0_src_cons_buff_0"} : memref<64x64xi16> 
    %pipe_b_0_src_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 0) {init = 1 : i32, sym_name = "pipe_b_0_src_cons_prod_lock_0"}
    %pipe_b_0_src_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "pipe_b_0_src_cons_cons_lock_0"}
    %pipe_b_0_src_buff_0 = aie.buffer(%tile_0_4) {address = 17408 : i32, sym_name = "pipe_b_0_src_buff_0"} : memref<64x64xi16> 
    %pipe_b_0_src_prod_lock_0 = aie.lock(%tile_0_4, 0) {init = 1 : i32, sym_name = "pipe_b_0_src_prod_lock_0"}
    %pipe_b_0_src_cons_lock_0 = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "pipe_b_0_src_cons_lock_0"}
    aie.flow(%tile_0_4, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %mem_tile_0_1, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 2, %tile_0_4, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %mem_tile_0_1, DMA : 2)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_0_3, DMA : 1)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %mem_tile_2_1, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %shim_noc_tile_2_0, DMA : 0)
    %_anonymous0 = aie.buffer(%tile_0_2) {address = 17408 : i32, sym_name = "_anonymous0"} : memref<2x32x64xi16> 
    %_anonymous1 = aie.buffer(%tile_0_2) {address = 33792 : i32, sym_name = "_anonymous1"} : memref<32x64xi16> 
    %_anonymous2 = aie.buffer(%tile_0_3) {address = 9216 : i32, sym_name = "_anonymous2"} : memref<64x64xi16> 
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%pipe_b_0_src_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c64 = arith.constant 64 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c64 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c64_3 = arith.constant 64 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c64_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %fifo_0_cons_buff_0[%2, %4] : memref<64x64xi16>
      memref.store %6, %pipe_b_0_src_buff_0[%2, %4] : memref<64x64xi16>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%pipe_b_0_src_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%pipe_b_0_src_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c64_6 = arith.constant 64 : index
      %c1_7 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb13
      %10 = arith.cmpi slt, %9, %c64_6 : index
      cf.cond_br %10, ^bb10, ^bb14
    ^bb10:  // pred: ^bb9
      %c0_8 = arith.constant 0 : index
      %c64_9 = arith.constant 64 : index
      %c1_10 = arith.constant 1 : index
      cf.br ^bb11(%c0_8 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb12
      %12 = arith.cmpi slt, %11, %c64_9 : index
      cf.cond_br %12, ^bb12, ^bb13
    ^bb12:  // pred: ^bb11
      %13 = memref.load %fifo_0_cons_buff_1[%9, %11] : memref<64x64xi16>
      memref.store %13, %pipe_b_0_src_buff_0[%9, %11] : memref<64x64xi16>
      %14 = arith.addi %11, %c1_10 : index
      cf.br ^bb11(%14 : index)
    ^bb13:  // pred: ^bb11
      %15 = arith.addi %9, %c1_7 : index
      cf.br ^bb9(%15 : index)
    ^bb14:  // pred: ^bb9
      aie.use_lock(%pipe_b_0_src_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_cons_prod_lock_0, Release, 1)
      %16 = arith.addi %0, %c2 : index
      cf.br ^bb1(%16 : index)
    ^bb15:  // pred: ^bb1
      aie.use_lock(%pipe_b_0_src_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %c64_12 = arith.constant 64 : index
      %c1_13 = arith.constant 1 : index
      cf.br ^bb16(%c0_11 : index)
    ^bb16(%17: index):  // 2 preds: ^bb15, ^bb20
      %18 = arith.cmpi slt, %17, %c64_12 : index
      cf.cond_br %18, ^bb17, ^bb21
    ^bb17:  // pred: ^bb16
      %c0_14 = arith.constant 0 : index
      %c64_15 = arith.constant 64 : index
      %c1_16 = arith.constant 1 : index
      cf.br ^bb18(%c0_14 : index)
    ^bb18(%19: index):  // 2 preds: ^bb17, ^bb19
      %20 = arith.cmpi slt, %19, %c64_15 : index
      cf.cond_br %20, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      %21 = memref.load %fifo_0_cons_buff_0[%17, %19] : memref<64x64xi16>
      memref.store %21, %pipe_b_0_src_buff_0[%17, %19] : memref<64x64xi16>
      %22 = arith.addi %19, %c1_16 : index
      cf.br ^bb18(%22 : index)
    ^bb20:  // pred: ^bb18
      %23 = arith.addi %17, %c1_13 : index
      cf.br ^bb16(%23 : index)
    ^bb21:  // pred: ^bb16
      aie.use_lock(%pipe_b_0_src_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_cons_prod_lock_0, Release, 1)
      aie.end
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c2 = arith.constant 2 : index
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2_0 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      %c2_1 = arith.constant 2 : index
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %subview = memref.subview %_anonymous0[%c0, 0, 0] [1, 32, 64] [1, 1, 1] : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      memref.copy %pipe_c_0_dst_cons_buff_0, %subview : memref<32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, Release, 1)
      %c1_2 = arith.constant 1 : index
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %subview_3 = memref.subview %_anonymous0[%c1, 0, 0] [1, 32, 64] [1, 1, 1] : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      memref.copy %pipe_c_0_dst_cons_buff_1, %subview_3 : memref<32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_4_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c2_5 = arith.constant 2 : index
      %c1_6 = arith.constant 1 : index
      %c2_7 = arith.constant 2 : index
      %subview_8 = memref.subview %_anonymous0[%c0_4, 0, 0] [1, 32, 64] [1, 1, 1] {from = "c_tiles"} : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      %subview_9 = memref.subview %fifo_4_buff_0[0, 0] [32, 64] [1, 1] : memref<64x64xi16> to memref<32x64xi16, strided<[64, 1]>>
      memref.copy %subview_8, %subview_9 {to = "local_C"} : memref<32x64xi16, strided<[64, 1], offset: ?>> to memref<32x64xi16, strided<[64, 1]>>
      %c1_10 = arith.constant 1 : index
      %subview_11 = memref.subview %_anonymous0[%c1_6, 0, 0] [1, 32, 64] [1, 1, 1] {from = "c_tiles"} : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      %subview_12 = memref.subview %fifo_4_buff_0[0, 0] [32, 64] [1, 1] : memref<64x64xi16> to memref<32x64xi16, strided<[64, 1]>>
      memref.copy %subview_11, %subview_12 {to = "local_C"} : memref<32x64xi16, strided<[64, 1], offset: ?>> to memref<32x64xi16, strided<[64, 1]>>
      aie.use_lock(%fifo_4_cons_lock_0, Release, 1)
      %c2_13 = arith.constant 2 : index
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %subview_14 = memref.subview %_anonymous0[%c0, 0, 0] [1, 32, 64] [1, 1, 1] : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      memref.copy %pipe_c_0_dst_cons_buff_0, %subview_14 : memref<32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, Release, 1)
      %c1_15 = arith.constant 1 : index
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %subview_16 = memref.subview %_anonymous0[%c1, 0, 0] [1, 32, 64] [1, 1, 1] : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      memref.copy %pipe_c_0_dst_cons_buff_1, %subview_16 : memref<32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_4_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c2_18 = arith.constant 2 : index
      %c1_19 = arith.constant 1 : index
      %c2_20 = arith.constant 2 : index
      %subview_21 = memref.subview %_anonymous0[%c0_17, 0, 0] [1, 32, 64] [1, 1, 1] {from = "c_tiles"} : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      %subview_22 = memref.subview %fifo_4_buff_1[0, 0] [32, 64] [1, 1] : memref<64x64xi16> to memref<32x64xi16, strided<[64, 1]>>
      memref.copy %subview_21, %subview_22 {to = "local_C"} : memref<32x64xi16, strided<[64, 1], offset: ?>> to memref<32x64xi16, strided<[64, 1]>>
      %c1_23 = arith.constant 1 : index
      %subview_24 = memref.subview %_anonymous0[%c1_19, 0, 0] [1, 32, 64] [1, 1, 1] {from = "c_tiles"} : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      %subview_25 = memref.subview %fifo_4_buff_1[0, 0] [32, 64] [1, 1] : memref<64x64xi16> to memref<32x64xi16, strided<[64, 1]>>
      memref.copy %subview_24, %subview_25 {to = "local_C"} : memref<32x64xi16, strided<[64, 1], offset: ?>> to memref<32x64xi16, strided<[64, 1]>>
      aie.use_lock(%fifo_4_cons_lock_0, Release, 1)
      %2 = arith.addi %0, %c2_0 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      %c2_26 = arith.constant 2 : index
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %subview_27 = memref.subview %_anonymous0[%c0, 0, 0] [1, 32, 64] [1, 1, 1] : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      memref.copy %pipe_c_0_dst_cons_buff_0, %subview_27 : memref<32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, Release, 1)
      %c1_28 = arith.constant 1 : index
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %subview_29 = memref.subview %_anonymous0[%c1, 0, 0] [1, 32, 64] [1, 1, 1] : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      memref.copy %pipe_c_0_dst_cons_buff_1, %subview_29 : memref<32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_4_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_30 = arith.constant 0 : index
      %c2_31 = arith.constant 2 : index
      %c1_32 = arith.constant 1 : index
      %c2_33 = arith.constant 2 : index
      %subview_34 = memref.subview %_anonymous0[%c0_30, 0, 0] [1, 32, 64] [1, 1, 1] {from = "c_tiles"} : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      %subview_35 = memref.subview %fifo_4_buff_0[0, 0] [32, 64] [1, 1] : memref<64x64xi16> to memref<32x64xi16, strided<[64, 1]>>
      memref.copy %subview_34, %subview_35 {to = "local_C"} : memref<32x64xi16, strided<[64, 1], offset: ?>> to memref<32x64xi16, strided<[64, 1]>>
      %c1_36 = arith.constant 1 : index
      %subview_37 = memref.subview %_anonymous0[%c1_32, 0, 0] [1, 32, 64] [1, 1, 1] {from = "c_tiles"} : memref<2x32x64xi16> to memref<32x64xi16, strided<[64, 1], offset: ?>>
      %subview_38 = memref.subview %fifo_4_buff_0[0, 0] [32, 64] [1, 1] : memref<64x64xi16> to memref<32x64xi16, strided<[64, 1]>>
      memref.copy %subview_37, %subview_38 {to = "local_C"} : memref<32x64xi16, strided<[64, 1], offset: ?>> to memref<32x64xi16, strided<[64, 1]>>
      aie.use_lock(%fifo_4_cons_lock_0, Release, 1)
      aie.end
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%pipe_b_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%pipe_c_0_src_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @fill_zeros_i16_32_64_vector(%pipe_c_0_src_buff_0) {lib = "fill_zeros_i16_32_64_vector"} : (memref<32x64xi16>) -> ()
      aie.use_lock(%fifo_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_i16_i16(%fifo_2_cons_buff_0, %pipe_b_0_dst_cons_buff_0, %pipe_c_0_src_buff_0) : (memref<32x64xi16>, memref<64x64xi16>, memref<32x64xi16>) -> ()
      aie.use_lock(%pipe_b_0_dst_cons_prod_lock_0, Release, 1)
      aie.use_lock(%pipe_c_0_src_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_cons_prod_lock_0, Release, 1)
      aie.use_lock(%pipe_b_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%pipe_c_0_src_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @fill_zeros_i16_32_64_vector(%pipe_c_0_src_buff_1) {lib = "fill_zeros_i16_32_64_vector"} : (memref<32x64xi16>) -> ()
      aie.use_lock(%fifo_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_i16_i16(%fifo_2_cons_buff_1, %pipe_b_0_dst_cons_buff_0, %pipe_c_0_src_buff_1) : (memref<32x64xi16>, memref<64x64xi16>, memref<32x64xi16>) -> ()
      aie.use_lock(%pipe_b_0_dst_cons_prod_lock_0, Release, 1)
      aie.use_lock(%pipe_c_0_src_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_cons_prod_lock_0, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%pipe_b_0_dst_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%pipe_c_0_src_prod_lock_0, AcquireGreaterEqual, 1)
      func.call @fill_zeros_i16_32_64_vector(%pipe_c_0_src_buff_0) {lib = "fill_zeros_i16_32_64_vector"} : (memref<32x64xi16>) -> ()
      aie.use_lock(%fifo_2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      func.call @matmul_i16_i16(%fifo_2_cons_buff_0, %pipe_b_0_dst_cons_buff_0, %pipe_c_0_src_buff_0) : (memref<32x64xi16>, memref<64x64xi16>, memref<32x64xi16>) -> ()
      aie.use_lock(%pipe_b_0_dst_cons_prod_lock_0, Release, 1)
      aie.use_lock(%pipe_c_0_src_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "external1.o"}
    aiex.runtime_sequence(%arg0: memref<4096xi16>, %arg1: memref<4096xi16>, %arg2: memref<4096xi16>) {
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 64, 64][0, 0, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_1} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 32, 64][0, 2048, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_3} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg0[0, 1, 0, 0][1, 1, 32, 64][0, 2048, 64, 1]) {id = 1 : i64, issue_token = true, metadata = @fifo_3} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 64, 64][0, 0, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_5} : memref<4096xi16>
      aiex.npu.dma_wait {symbol = @fifo_5}
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%pipe_b_0_src_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_b_0_src_buff_0 : memref<64x64xi16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%pipe_b_0_src_prod_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 0, ^bb3, ^bb5)
    ^bb3:  // 2 preds: ^bb2, ^bb4
      aie.use_lock(%fifo_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_0_cons_buff_0 : memref<64x64xi16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%fifo_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_0_cons_buff_1 : memref<64x64xi16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb5:  // pred: ^bb2
      aie.end
    }
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%pipe_b_0_src_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_b_0_src_cons_buff_0 : memref<64x64xi16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%pipe_b_0_src_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%pipe_b_0_src_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_b_0_src_cons_buff_0 : memref<64x64xi16>, 0, 4096, [<size = 16, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%pipe_b_0_src_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(S2MM, 1, ^bb5, ^bb7)
    ^bb5:  // 2 preds: ^bb4, ^bb6
      aie.use_lock(%pipe_c_0_src_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_src_cons_buff_0 : memref<32x64xi16>, 0, 2048) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%pipe_c_0_src_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%pipe_c_0_src_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_src_cons_buff_1 : memref<32x64xi16>, 0, 2048) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%pipe_c_0_src_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb7:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 1, ^bb8, ^bb10)
    ^bb8:  // 2 preds: ^bb7, ^bb9
      aie.use_lock(%pipe_c_0_src_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_src_cons_buff_0 : memref<32x64xi16>, 0, 2048, [<size = 8, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%pipe_c_0_src_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%pipe_c_0_src_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_src_cons_buff_1 : memref<32x64xi16>, 0, 2048, [<size = 8, stride = 256>, <size = 4, stride = 4>, <size = 16, stride = 16>, <size = 4, stride = 1>]) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%pipe_c_0_src_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb10:  // pred: ^bb7
      %4 = aie.dma_start(MM2S, 2, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%fifo_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_cons_buff_0 : memref<1x1x64x64xi16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%fifo_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_cons_buff_1 : memref<1x1x64x64xi16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      %5 = aie.dma_start(S2MM, 2, ^bb14, ^bb16)
    ^bb14:  // 2 preds: ^bb13, ^bb15
      aie.use_lock(%fifo_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_cons_buff_0 : memref<1x1x64x64xi16>, 0, 4096) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%fifo_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_cons_buff_1 : memref<1x1x64x64xi16>, 0, 4096) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb16:  // pred: ^bb13
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%pipe_b_0_dst_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_b_0_dst_cons_buff_0 : memref<64x64xi16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%pipe_b_0_dst_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb5)
    ^bb3:  // 2 preds: ^bb2, ^bb4
      aie.use_lock(%pipe_c_0_src_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_src_buff_0 : memref<32x64xi16>, 0, 2048) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%pipe_c_0_src_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%pipe_c_0_src_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_src_buff_1 : memref<32x64xi16>, 0, 2048) {bd_id = 2 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%pipe_c_0_src_prod_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb5:  // pred: ^bb2
      %2 = aie.dma_start(S2MM, 1, ^bb6, ^bb8)
    ^bb6:  // 2 preds: ^bb5, ^bb7
      aie.use_lock(%fifo_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_2_cons_buff_0 : memref<32x64xi16>, 0, 2048) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%fifo_2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_2_cons_buff_1 : memref<32x64xi16>, 0, 2048) {bd_id = 4 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb8:  // pred: ^bb5
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_dst_cons_buff_0 : memref<32x64xi16>, 0, 2048) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%pipe_c_0_dst_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%pipe_c_0_dst_cons_buff_1 : memref<32x64xi16>, 0, 2048) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%pipe_c_0_dst_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_buff_0 : memref<64x64xi16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_4_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_4_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_buff_1 : memref<64x64xi16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_4_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @fifo_1(MM2S, 0, 0)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_cons_buff_0 : memref<1x1x32x64xi16>, 0, 2048, [<size = 8, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_cons_buff_1 : memref<1x1x32x64xi16>, 0, 2048, [<size = 8, stride = 256>, <size = 16, stride = 4>, <size = 4, stride = 64>, <size = 4, stride = 1>]) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_cons_buff_0 : memref<1x1x32x64xi16>, 0, 2048) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_cons_buff_1 : memref<1x1x32x64xi16>, 0, 2048) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @fifo_3(MM2S, 0, 1)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<64x64xi16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<64x64xi16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<64x64xi16>, 0, 4096) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<64x64xi16>, 0, 4096) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @fifo_5(S2MM, 0, 2)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_1_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_2_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}

module {
  aie.device(npu1_4col) {
    %shim_noc_tile_3_0 = aie.tile(3, 0)
    %switchbox_3_0 = aie.switchbox(%shim_noc_tile_3_0) {
    }
    memref.global "public" @fifo_14_cons : memref<2x2x32x32xi32>
    memref.global "public" @fifo_14 : memref<2x2x32x32xi32>
    memref.global "public" @fifo_13_cons : memref<32x32xi32>
    memref.global "public" @fifo_13 : memref<32x32xi32>
    memref.global "public" @fifo_12_cons : memref<32x32xi32>
    memref.global "public" @fifo_12 : memref<32x32xi32>
    memref.global "public" @fifo_11_cons : memref<32x32xi32>
    memref.global "public" @fifo_11 : memref<32x32xi32>
    memref.global "public" @fifo_10_cons : memref<32x32xi32>
    memref.global "public" @fifo_10 : memref<32x32xi32>
    memref.global "public" @fifo_9_cons : memref<2x2x32x32xi16>
    memref.global "public" @fifo_9 : memref<2x2x32x32xi16>
    memref.global "public" @fifo_8_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_8_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_8 : memref<32x32xi16>
    memref.global "public" @fifo_7_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_7_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_7 : memref<32x32xi16>
    memref.global "public" @fifo_6_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_6_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_6 : memref<32x32xi16>
    memref.global "public" @fifo_5_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_5_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_5 : memref<32x32xi16>
    memref.global "public" @fifo_4_cons : memref<2x2x32x32xi16>
    memref.global "public" @fifo_4 : memref<2x2x32x32xi16>
    memref.global "public" @fifo_3_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_3_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_3 : memref<32x32xi16>
    memref.global "public" @fifo_2_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_2_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_2 : memref<32x32xi16>
    memref.global "public" @fifo_1_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_1_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_1 : memref<32x32xi16>
    memref.global "public" @fifo_0_0_cons : memref<32x32xi16>
    memref.global "public" @fifo_0_1_cons : memref<32x32xi16>
    memref.global "public" @fifo_0 : memref<32x32xi16>
    memref.global "public" @pipe_0_1_1 : memref<32x32xi32>
    memref.global "public" @pipe_0_1_0 : memref<32x32xi32>
    memref.global "public" @pipe_0_0_1 : memref<32x32xi32>
    memref.global "public" @pipe_0_0_0 : memref<32x32xi32>
    func.func private @fill_zeros_i32_32_32_vector(memref<32x32xi32>)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %fifo_14_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 1 : i32, sym_name = "fifo_14_cons_prod_lock_0"}
    %fifo_14_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "fifo_14_cons_cons_lock_0"}
    %fifo_14_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, sym_name = "fifo_14_buff_0"} : memref<2x2x32x32xi32> 
    %fifo_14_buff_1 = aie.buffer(%mem_tile_2_1) {address = 16384 : i32, sym_name = "fifo_14_buff_1"} : memref<2x2x32x32xi32> 
    %fifo_14_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "fifo_14_prod_lock_0"}
    %fifo_14_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "fifo_14_cons_lock_0"}
    %fifo_14_prod_lock_1 = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "fifo_14_prod_lock_1"}
    %fifo_14_cons_lock_1 = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "fifo_14_cons_lock_1"}
    %fifo_14_prod_lock_2 = aie.lock(%mem_tile_2_1, 4) {init = 2 : i32, sym_name = "fifo_14_prod_lock_2"}
    %fifo_14_cons_lock_2 = aie.lock(%mem_tile_2_1, 5) {init = 0 : i32, sym_name = "fifo_14_cons_lock_2"}
    %fifo_14_prod_lock_3 = aie.lock(%mem_tile_2_1, 6) {init = 2 : i32, sym_name = "fifo_14_prod_lock_3"}
    %fifo_14_cons_lock_3 = aie.lock(%mem_tile_2_1, 7) {init = 0 : i32, sym_name = "fifo_14_cons_lock_3"}
    %fifo_13_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, sym_name = "fifo_13_buff_0"} : memref<32x32xi32> 
    %fifo_13_buff_1 = aie.buffer(%tile_3_2) {address = 5120 : i32, sym_name = "fifo_13_buff_1"} : memref<32x32xi32> 
    %fifo_13_prod_lock_0 = aie.lock(%tile_3_2, 4) {init = 2 : i32, sym_name = "fifo_13_prod_lock_0"}
    %fifo_13_cons_lock_0 = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "fifo_13_cons_lock_0"}
    %fifo_12_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, sym_name = "fifo_12_buff_0"} : memref<32x32xi32> 
    %fifo_12_buff_1 = aie.buffer(%tile_2_2) {address = 5120 : i32, sym_name = "fifo_12_buff_1"} : memref<32x32xi32> 
    %fifo_12_prod_lock_0 = aie.lock(%tile_2_2, 4) {init = 2 : i32, sym_name = "fifo_12_prod_lock_0"}
    %fifo_12_cons_lock_0 = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "fifo_12_cons_lock_0"}
    %fifo_11_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, sym_name = "fifo_11_buff_0"} : memref<32x32xi32> 
    %fifo_11_buff_1 = aie.buffer(%tile_1_2) {address = 5120 : i32, sym_name = "fifo_11_buff_1"} : memref<32x32xi32> 
    %fifo_11_prod_lock_0 = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "fifo_11_prod_lock_0"}
    %fifo_11_cons_lock_0 = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "fifo_11_cons_lock_0"}
    %fifo_10_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, sym_name = "fifo_10_buff_0"} : memref<32x32xi32> 
    %fifo_10_buff_1 = aie.buffer(%tile_0_2) {address = 5120 : i32, sym_name = "fifo_10_buff_1"} : memref<32x32xi32> 
    %fifo_10_prod_lock_0 = aie.lock(%tile_0_2, 4) {init = 2 : i32, sym_name = "fifo_10_prod_lock_0"}
    %fifo_10_cons_lock_0 = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "fifo_10_cons_lock_0"}
    %fifo_9_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, sym_name = "fifo_9_cons_buff_0"} : memref<2x2x32x32xi16> 
    %fifo_9_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 8192 : i32, sym_name = "fifo_9_cons_buff_1"} : memref<2x2x32x32xi16> 
    %fifo_9_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "fifo_9_cons_prod_lock_0"}
    %fifo_9_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "fifo_9_cons_cons_lock_0"}
    %fifo_9_cons_prod_lock_1 = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "fifo_9_cons_prod_lock_1"}
    %fifo_9_cons_cons_lock_1 = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "fifo_9_cons_cons_lock_1"}
    %fifo_9_cons_prod_lock_2 = aie.lock(%mem_tile_1_1, 4) {init = 2 : i32, sym_name = "fifo_9_cons_prod_lock_2"}
    %fifo_9_cons_cons_lock_2 = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "fifo_9_cons_cons_lock_2"}
    %fifo_9_cons_prod_lock_3 = aie.lock(%mem_tile_1_1, 6) {init = 2 : i32, sym_name = "fifo_9_cons_prod_lock_3"}
    %fifo_9_cons_cons_lock_3 = aie.lock(%mem_tile_1_1, 7) {init = 0 : i32, sym_name = "fifo_9_cons_cons_lock_3"}
    %fifo_9_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "fifo_9_prod_lock_0"}
    %fifo_9_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "fifo_9_cons_lock_0"}
    %fifo_8_0_cons_buff_0 = aie.buffer(%tile_1_2) {address = 13312 : i32, sym_name = "fifo_8_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_8_0_cons_buff_1 = aie.buffer(%tile_1_2) {address = 15360 : i32, sym_name = "fifo_8_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_8_0_cons_prod_lock_0 = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "fifo_8_0_cons_prod_lock_0"}
    %fifo_8_0_cons_cons_lock_0 = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "fifo_8_0_cons_cons_lock_0"}
    %fifo_8_1_cons_buff_0 = aie.buffer(%tile_3_2) {address = 13312 : i32, sym_name = "fifo_8_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_8_1_cons_buff_1 = aie.buffer(%tile_3_2) {address = 15360 : i32, sym_name = "fifo_8_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_8_1_cons_prod_lock_0 = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "fifo_8_1_cons_prod_lock_0"}
    %fifo_8_1_cons_cons_lock_0 = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "fifo_8_1_cons_cons_lock_0"}
    %fifo_7_0_cons_buff_0 = aie.buffer(%tile_2_2) {address = 13312 : i32, sym_name = "fifo_7_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_7_0_cons_buff_1 = aie.buffer(%tile_2_2) {address = 15360 : i32, sym_name = "fifo_7_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_7_0_cons_prod_lock_0 = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "fifo_7_0_cons_prod_lock_0"}
    %fifo_7_0_cons_cons_lock_0 = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "fifo_7_0_cons_cons_lock_0"}
    %fifo_7_1_cons_buff_0 = aie.buffer(%tile_0_2) {address = 13312 : i32, sym_name = "fifo_7_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_7_1_cons_buff_1 = aie.buffer(%tile_0_2) {address = 15360 : i32, sym_name = "fifo_7_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_7_1_cons_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "fifo_7_1_cons_prod_lock_0"}
    %fifo_7_1_cons_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "fifo_7_1_cons_cons_lock_0"}
    %fifo_6_0_cons_buff_0 = aie.buffer(%tile_3_3) {address = 13312 : i32, sym_name = "fifo_6_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_6_0_cons_buff_1 = aie.buffer(%tile_3_3) {address = 15360 : i32, sym_name = "fifo_6_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_6_0_cons_prod_lock_0 = aie.lock(%tile_3_3, 4) {init = 2 : i32, sym_name = "fifo_6_0_cons_prod_lock_0"}
    %fifo_6_0_cons_cons_lock_0 = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "fifo_6_0_cons_cons_lock_0"}
    %fifo_6_1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 13312 : i32, sym_name = "fifo_6_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_6_1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 15360 : i32, sym_name = "fifo_6_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_6_1_cons_prod_lock_0 = aie.lock(%tile_1_3, 4) {init = 2 : i32, sym_name = "fifo_6_1_cons_prod_lock_0"}
    %fifo_6_1_cons_cons_lock_0 = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "fifo_6_1_cons_cons_lock_0"}
    %fifo_5_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 13312 : i32, sym_name = "fifo_5_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_5_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 15360 : i32, sym_name = "fifo_5_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_5_0_cons_prod_lock_0 = aie.lock(%tile_0_3, 4) {init = 2 : i32, sym_name = "fifo_5_0_cons_prod_lock_0"}
    %fifo_5_0_cons_cons_lock_0 = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "fifo_5_0_cons_cons_lock_0"}
    %fifo_5_1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 13312 : i32, sym_name = "fifo_5_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_5_1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 15360 : i32, sym_name = "fifo_5_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_5_1_cons_prod_lock_0 = aie.lock(%tile_2_3, 4) {init = 2 : i32, sym_name = "fifo_5_1_cons_prod_lock_0"}
    %fifo_5_1_cons_cons_lock_0 = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "fifo_5_1_cons_cons_lock_0"}
    %fifo_4_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, sym_name = "fifo_4_cons_buff_0"} : memref<2x2x32x32xi16> 
    %fifo_4_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 8192 : i32, sym_name = "fifo_4_cons_buff_1"} : memref<2x2x32x32xi16> 
    %fifo_4_cons_prod_lock_0 = aie.lock(%mem_tile_0_1, 0) {init = 2 : i32, sym_name = "fifo_4_cons_prod_lock_0"}
    %fifo_4_cons_cons_lock_0 = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "fifo_4_cons_cons_lock_0"}
    %fifo_4_cons_prod_lock_1 = aie.lock(%mem_tile_0_1, 2) {init = 2 : i32, sym_name = "fifo_4_cons_prod_lock_1"}
    %fifo_4_cons_cons_lock_1 = aie.lock(%mem_tile_0_1, 3) {init = 0 : i32, sym_name = "fifo_4_cons_cons_lock_1"}
    %fifo_4_cons_prod_lock_2 = aie.lock(%mem_tile_0_1, 4) {init = 2 : i32, sym_name = "fifo_4_cons_prod_lock_2"}
    %fifo_4_cons_cons_lock_2 = aie.lock(%mem_tile_0_1, 5) {init = 0 : i32, sym_name = "fifo_4_cons_cons_lock_2"}
    %fifo_4_cons_prod_lock_3 = aie.lock(%mem_tile_0_1, 6) {init = 2 : i32, sym_name = "fifo_4_cons_prod_lock_3"}
    %fifo_4_cons_cons_lock_3 = aie.lock(%mem_tile_0_1, 7) {init = 0 : i32, sym_name = "fifo_4_cons_cons_lock_3"}
    %fifo_4_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "fifo_4_prod_lock_0"}
    %fifo_4_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "fifo_4_cons_lock_0"}
    %fifo_3_0_cons_buff_0 = aie.buffer(%tile_3_2) {address = 17408 : i32, sym_name = "fifo_3_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_3_0_cons_buff_1 = aie.buffer(%tile_3_2) {address = 19456 : i32, sym_name = "fifo_3_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_3_0_cons_prod_lock_0 = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "fifo_3_0_cons_prod_lock_0"}
    %fifo_3_0_cons_cons_lock_0 = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "fifo_3_0_cons_cons_lock_0"}
    %fifo_3_1_cons_buff_0 = aie.buffer(%tile_2_2) {address = 17408 : i32, sym_name = "fifo_3_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_3_1_cons_buff_1 = aie.buffer(%tile_2_2) {address = 19456 : i32, sym_name = "fifo_3_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_3_1_cons_prod_lock_0 = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "fifo_3_1_cons_prod_lock_0"}
    %fifo_3_1_cons_cons_lock_0 = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "fifo_3_1_cons_cons_lock_0"}
    %fifo_2_0_cons_buff_0 = aie.buffer(%tile_3_3) {address = 17408 : i32, sym_name = "fifo_2_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_2_0_cons_buff_1 = aie.buffer(%tile_3_3) {address = 19456 : i32, sym_name = "fifo_2_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_2_0_cons_prod_lock_0 = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "fifo_2_0_cons_prod_lock_0"}
    %fifo_2_0_cons_cons_lock_0 = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "fifo_2_0_cons_cons_lock_0"}
    %fifo_2_1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 17408 : i32, sym_name = "fifo_2_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_2_1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 19456 : i32, sym_name = "fifo_2_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_2_1_cons_prod_lock_0 = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "fifo_2_1_cons_prod_lock_0"}
    %fifo_2_1_cons_cons_lock_0 = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "fifo_2_1_cons_cons_lock_0"}
    %fifo_1_0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 17408 : i32, sym_name = "fifo_1_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_1_0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 19456 : i32, sym_name = "fifo_1_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_1_0_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "fifo_1_0_cons_prod_lock_0"}
    %fifo_1_0_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "fifo_1_0_cons_cons_lock_0"}
    %fifo_1_1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 17408 : i32, sym_name = "fifo_1_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_1_1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 19456 : i32, sym_name = "fifo_1_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_1_1_cons_prod_lock_0 = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "fifo_1_1_cons_prod_lock_0"}
    %fifo_1_1_cons_cons_lock_0 = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "fifo_1_1_cons_cons_lock_0"}
    %fifo_0_0_cons_buff_0 = aie.buffer(%tile_1_3) {address = 17408 : i32, sym_name = "fifo_0_0_cons_buff_0"} : memref<32x32xi16> 
    %fifo_0_0_cons_buff_1 = aie.buffer(%tile_1_3) {address = 19456 : i32, sym_name = "fifo_0_0_cons_buff_1"} : memref<32x32xi16> 
    %fifo_0_0_cons_prod_lock_0 = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "fifo_0_0_cons_prod_lock_0"}
    %fifo_0_0_cons_cons_lock_0 = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "fifo_0_0_cons_cons_lock_0"}
    %fifo_0_1_cons_buff_0 = aie.buffer(%tile_0_3) {address = 17408 : i32, sym_name = "fifo_0_1_cons_buff_0"} : memref<32x32xi16> 
    %fifo_0_1_cons_buff_1 = aie.buffer(%tile_0_3) {address = 19456 : i32, sym_name = "fifo_0_1_cons_buff_1"} : memref<32x32xi16> 
    %fifo_0_1_cons_prod_lock_0 = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "fifo_0_1_cons_prod_lock_0"}
    %fifo_0_1_cons_cons_lock_0 = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "fifo_0_1_cons_cons_lock_0"}
    %pipe_0_1_1_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, sym_name = "pipe_0_1_1_buff_0"} : memref<32x32xi32> 
    %pipe_0_1_1_buff_1 = aie.buffer(%tile_3_3) {address = 5120 : i32, sym_name = "pipe_0_1_1_buff_1"} : memref<32x32xi32> 
    %pipe_0_1_1_prod_lock_0 = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "pipe_0_1_1_prod_lock_0"}
    %pipe_0_1_1_cons_lock_0 = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "pipe_0_1_1_cons_lock_0"}
    %pipe_0_1_0_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, sym_name = "pipe_0_1_0_buff_0"} : memref<32x32xi32> 
    %pipe_0_1_0_buff_1 = aie.buffer(%tile_2_3) {address = 5120 : i32, sym_name = "pipe_0_1_0_buff_1"} : memref<32x32xi32> 
    %pipe_0_1_0_prod_lock_0 = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "pipe_0_1_0_prod_lock_0"}
    %pipe_0_1_0_cons_lock_0 = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "pipe_0_1_0_cons_lock_0"}
    %pipe_0_0_1_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, sym_name = "pipe_0_0_1_buff_0"} : memref<32x32xi32> 
    %pipe_0_0_1_buff_1 = aie.buffer(%tile_1_3) {address = 5120 : i32, sym_name = "pipe_0_0_1_buff_1"} : memref<32x32xi32> 
    %pipe_0_0_1_prod_lock_0 = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "pipe_0_0_1_prod_lock_0"}
    %pipe_0_0_1_cons_lock_0 = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "pipe_0_0_1_cons_lock_0"}
    %pipe_0_0_0_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, sym_name = "pipe_0_0_0_buff_0"} : memref<32x32xi32> 
    %pipe_0_0_0_buff_1 = aie.buffer(%tile_0_3) {address = 5120 : i32, sym_name = "pipe_0_0_0_buff_1"} : memref<32x32xi32> 
    %pipe_0_0_0_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "pipe_0_0_0_prod_lock_0"}
    %pipe_0_0_0_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "pipe_0_0_0_cons_lock_0"}
    %switchbox_0_1 = aie.switchbox(%mem_tile_0_1) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 2>
      aie.connect<DMA : 2, North : 0>
      aie.connect<DMA : 3, North : 1>
      aie.connect<South : 5, DMA : 0>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 3, North : 3>
      aie.connect<South : 3, East : 2>
      aie.connect<South : 2, East : 1>
      aie.connect<South : 2, DMA : 0>
      aie.connect<South : 0, North : 1>
      aie.connect<South : 1, East : 3>
      aie.connect<East : 3, North : 5>
      aie.connect<East : 0, DMA : 1>
      aie.connect<DMA : 0, East : 0>
    }
    %switchbox_0_3 = aie.switchbox(%tile_0_3) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 1, East : 1>
      aie.connect<South : 5, DMA : 1>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<West : 2, North : 4>
      aie.connect<West : 1, DMA : 0>
      aie.connect<West : 3, East : 3>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 5, West : 3>
      aie.connect<South : 4, North : 5>
      aie.connect<South : 1, West : 0>
      aie.connect<South : 2, East : 0>
      aie.connect<South : 0, East : 2>
      aie.connect<South : 0, DMA : 1>
      aie.connect<West : 0, East : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
      aie.connect<South : 4, DMA : 0>
      aie.connect<West : 1, East : 0>
      aie.connect<South : 1, East : 3>
      aie.connect<South : 5, DMA : 1>
      aie.connect<South : 5, East : 2>
    }
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_1_3, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_2, DMA : 0)
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
      aie.connect<West : 0, DMA : 0>
      aie.connect<West : 0, East : 3>
      aie.connect<West : 3, DMA : 1>
      aie.connect<West : 2, East : 0>
    }
    %switchbox_3_3 = aie.switchbox(%tile_3_3) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<West : 0, DMA : 1>
    }
    aie.flow(%mem_tile_0_1, DMA : 2, %tile_3_3, DMA : 0)
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<West : 3, East : 2>
      aie.connect<West : 0, DMA : 1>
      aie.connect<West : 2, East : 0>
      aie.connect<West : 1, South : 2>
      aie.connect<DMA : 0, South : 1>
      aie.connect<East : 3, South : 0>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<West : 0, DMA : 1>
      aie.connect<DMA : 0, West : 3>
    }
    aie.flow(%mem_tile_0_1, DMA : 3, %tile_3_2, DMA : 0)
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 5>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_0_0 = aie.shim_mux(%shim_noc_tile_0_0) {
      aie.connect<DMA : 0, North : 3>
    }
    %switchbox_1_1 = aie.switchbox(%mem_tile_1_1) {
      aie.connect<DMA : 0, North : 5>
      aie.connect<DMA : 1, North : 4>
      aie.connect<DMA : 2, North : 1>
      aie.connect<DMA : 2, North : 2>
      aie.connect<DMA : 3, North : 0>
      aie.connect<South : 1, DMA : 0>
      aie.connect<North : 0, South : 0>
    }
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_0_3, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_3_3, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 2, %tile_2_2, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 3, %tile_1_2, DMA : 1)
    %switchbox_1_0 = aie.switchbox(%shim_noc_tile_1_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<North : 0, East : 1>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_1_0 = aie.shim_mux(%shim_noc_tile_1_0) {
      aie.connect<DMA : 0, North : 3>
    }
    %switchbox_2_1 = aie.switchbox(%mem_tile_2_1) {
      aie.connect<North : 2, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<North : 1, DMA : 2>
      aie.connect<North : 0, DMA : 3>
      aie.connect<DMA : 0, South : 2>
    }
    %switchbox_2_0 = aie.switchbox(%shim_noc_tile_2_0) {
      aie.connect<West : 1, North : 5>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_2_0 = aie.shim_mux(%shim_noc_tile_2_0) {
      aie.connect<North : 2, DMA : 0>
    }
    %_anonymous0 = aie.buffer(%tile_0_3) {address = 9216 : i32, sym_name = "_anonymous0"} : memref<32x32xi32> 
    %_anonymous1 = aie.buffer(%tile_0_3) {address = 21504 : i32, sym_name = "_anonymous1"} : memref<8x32xi16> 
    %_anonymous2 = aie.buffer(%tile_0_3) {address = 22016 : i32, sym_name = "_anonymous2"} : memref<i32> 
    %_anonymous3 = aie.buffer(%tile_0_2) {address = 9216 : i32, sym_name = "_anonymous3"} : memref<32x32xi32> 
    %_anonymous4 = aie.buffer(%tile_0_2) {address = 21504 : i32, sym_name = "_anonymous4"} : memref<8x32xi16> 
    %_anonymous5 = aie.buffer(%tile_0_2) {address = 22016 : i32, sym_name = "_anonymous5"} : memref<i32> 
    %_anonymous6 = aie.buffer(%tile_1_3) {address = 9216 : i32, sym_name = "_anonymous6"} : memref<32x32xi32> 
    %_anonymous7 = aie.buffer(%tile_1_3) {address = 21504 : i32, sym_name = "_anonymous7"} : memref<8x32xi16> 
    %_anonymous8 = aie.buffer(%tile_1_3) {address = 22016 : i32, sym_name = "_anonymous8"} : memref<i32> 
    %_anonymous9 = aie.buffer(%tile_2_3) {address = 9216 : i32, sym_name = "_anonymous9"} : memref<32x32xi32> 
    %_anonymous10 = aie.buffer(%tile_2_3) {address = 21504 : i32, sym_name = "_anonymous10"} : memref<8x32xi16> 
    %_anonymous11 = aie.buffer(%tile_2_3) {address = 22016 : i32, sym_name = "_anonymous11"} : memref<i32> 
    %_anonymous12 = aie.buffer(%tile_3_3) {address = 9216 : i32, sym_name = "_anonymous12"} : memref<32x32xi32> 
    %_anonymous13 = aie.buffer(%tile_3_3) {address = 21504 : i32, sym_name = "_anonymous13"} : memref<8x32xi16> 
    %_anonymous14 = aie.buffer(%tile_3_3) {address = 22016 : i32, sym_name = "_anonymous14"} : memref<i32> 
    %_anonymous15 = aie.buffer(%tile_1_2) {address = 9216 : i32, sym_name = "_anonymous15"} : memref<32x32xi32> 
    %_anonymous16 = aie.buffer(%tile_1_2) {address = 21504 : i32, sym_name = "_anonymous16"} : memref<8x32xi16> 
    %_anonymous17 = aie.buffer(%tile_1_2) {address = 22016 : i32, sym_name = "_anonymous17"} : memref<i32> 
    %_anonymous18 = aie.buffer(%tile_2_2) {address = 9216 : i32, sym_name = "_anonymous18"} : memref<32x32xi32> 
    %_anonymous19 = aie.buffer(%tile_2_2) {address = 21504 : i32, sym_name = "_anonymous19"} : memref<8x32xi16> 
    %_anonymous20 = aie.buffer(%tile_2_2) {address = 22016 : i32, sym_name = "_anonymous20"} : memref<i32> 
    %_anonymous21 = aie.buffer(%tile_3_2) {address = 9216 : i32, sym_name = "_anonymous21"} : memref<32x32xi32> 
    %_anonymous22 = aie.buffer(%tile_3_2) {address = 21504 : i32, sym_name = "_anonymous22"} : memref<8x32xi16> 
    %_anonymous23 = aie.buffer(%tile_3_2) {address = 22016 : i32, sym_name = "_anonymous23"} : memref<i32> 
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous0) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %_anonymous0[%2, %4] : memref<32x32xi32>
      memref.store %6, %pipe_0_0_0_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_0_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %pipe_0_0_0_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous2[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous1[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_5_0_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous2[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous2[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous2[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %pipe_0_0_0_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_0_0_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_5_0_cons_prod_lock_0, Release, 1)
      func.call @fill_zeros_i32_32_32_vector(%_anonymous0) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %_anonymous0[%33, %35] : memref<32x32xi32>
      memref.store %37, %pipe_0_0_0_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_0_1_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %pipe_0_0_0_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous2[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous1[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_5_0_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous2[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous2[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous2[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %pipe_0_0_0_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_0_0_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_5_0_cons_prod_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous0) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_0_0_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %_anonymous0[%65, %67] : memref<32x32xi32>
      memref.store %69, %pipe_0_0_0_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_0_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_5_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_0_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous1 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %pipe_0_0_0_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous2[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous1[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_5_0_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous2[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous2[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous2[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %pipe_0_0_0_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_0_0_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_5_0_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "external0.o"}
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      aie.use_lock(%pipe_0_0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_10_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %pipe_0_0_0_buff_0[%2, %4] : memref<32x32xi32>
      memref.store %6, %fifo_10_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_1_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous4 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %fifo_10_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous5[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous4[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_7_1_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous5[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous5[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous5[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %fifo_10_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_0_0_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_7_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_10_cons_lock_0, Release, 1)
      aie.use_lock(%pipe_0_0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_10_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %pipe_0_0_0_buff_1[%33, %35] : memref<32x32xi32>
      memref.store %37, %fifo_10_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_1_0_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous4 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %fifo_10_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous5[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous4[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_7_1_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous5[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous5[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous5[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %fifo_10_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_0_0_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_7_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_10_cons_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      aie.use_lock(%pipe_0_0_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_10_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %pipe_0_0_0_buff_0[%65, %67] : memref<32x32xi32>
      memref.store %69, %fifo_10_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_1_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_7_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_1_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous4 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %fifo_10_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous5[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous4[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_7_1_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous5[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous5[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous5[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %fifo_10_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_0_0_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_1_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_7_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_10_cons_lock_0, Release, 1)
      aie.end
    }
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous6) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %_anonymous6[%2, %4] : memref<32x32xi32>
      memref.store %6, %pipe_0_0_1_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_0_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous7 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %pipe_0_0_1_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous8[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous7[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_6_1_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous8[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous8[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous8[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %pipe_0_0_1_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_0_1_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_6_1_cons_prod_lock_0, Release, 1)
      func.call @fill_zeros_i32_32_32_vector(%_anonymous6) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %_anonymous6[%33, %35] : memref<32x32xi32>
      memref.store %37, %pipe_0_0_1_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_0_0_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous7 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %pipe_0_0_1_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous8[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous7[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_6_1_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous8[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous8[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous8[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %pipe_0_0_1_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_0_1_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_6_1_cons_prod_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous6) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_0_1_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %_anonymous6[%65, %67] : memref<32x32xi32>
      memref.store %69, %pipe_0_0_1_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_0_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_6_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_0_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous7 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %pipe_0_0_1_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous8[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous7[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_6_1_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous8[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous8[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous8[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %pipe_0_0_1_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_0_1_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_0_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_6_1_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "external0.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous9) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %_anonymous9[%2, %4] : memref<32x32xi32>
      memref.store %6, %pipe_0_1_0_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_2_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous10 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %pipe_0_1_0_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous11[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous10[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_5_1_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous11[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous11[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous11[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %pipe_0_1_0_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_1_0_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_5_1_cons_prod_lock_0, Release, 1)
      func.call @fill_zeros_i32_32_32_vector(%_anonymous9) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %_anonymous9[%33, %35] : memref<32x32xi32>
      memref.store %37, %pipe_0_1_0_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_2_1_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous10 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %pipe_0_1_0_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous11[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous10[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_5_1_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous11[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous11[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous11[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %pipe_0_1_0_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_1_0_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_5_1_cons_prod_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous9) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_1_0_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %_anonymous9[%65, %67] : memref<32x32xi32>
      memref.store %69, %pipe_0_1_0_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_2_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_5_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_2_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous10 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %pipe_0_1_0_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous11[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous10[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_5_1_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous11[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous11[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous11[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %pipe_0_1_0_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_1_0_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_5_1_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "external0.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous12) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %_anonymous12[%2, %4] : memref<32x32xi32>
      memref.store %6, %pipe_0_1_1_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_2_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous13 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %pipe_0_1_1_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous14[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous13[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_6_0_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous14[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous14[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous14[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %pipe_0_1_1_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_1_1_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_6_0_cons_prod_lock_0, Release, 1)
      func.call @fill_zeros_i32_32_32_vector(%_anonymous12) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %_anonymous12[%33, %35] : memref<32x32xi32>
      memref.store %37, %pipe_0_1_1_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_2_0_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous13 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %pipe_0_1_1_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous14[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous13[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_6_0_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous14[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous14[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous14[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %pipe_0_1_1_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_1_1_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_6_0_cons_prod_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      func.call @fill_zeros_i32_32_32_vector(%_anonymous12) {lib = "fill_zeros_i32_32_32_vector"} : (memref<32x32xi32>) -> ()
      aie.use_lock(%pipe_0_1_1_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %_anonymous12[%65, %67] : memref<32x32xi32>
      memref.store %69, %pipe_0_1_1_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_2_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_6_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_2_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous13 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %pipe_0_1_1_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous14[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous13[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_6_0_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous14[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous14[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous14[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %pipe_0_1_1_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_1_1_cons_lock_0, Release, 1)
      aie.use_lock(%fifo_2_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_6_0_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "external0.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      aie.use_lock(%pipe_0_0_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_11_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %pipe_0_0_1_buff_0[%2, %4] : memref<32x32xi32>
      memref.store %6, %fifo_11_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_8_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_1_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous16 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %fifo_11_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous17[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous16[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_8_0_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous17[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous17[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous17[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %fifo_11_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_0_1_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_8_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_11_cons_lock_0, Release, 1)
      aie.use_lock(%pipe_0_0_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_11_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %pipe_0_0_1_buff_1[%33, %35] : memref<32x32xi32>
      memref.store %37, %fifo_11_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_8_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_1_1_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous16 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %fifo_11_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous17[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous16[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_8_0_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous17[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous17[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous17[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %fifo_11_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_0_1_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_8_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_11_cons_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      aie.use_lock(%pipe_0_0_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_11_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %pipe_0_0_1_buff_0[%65, %67] : memref<32x32xi32>
      memref.store %69, %fifo_11_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_1_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_8_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_1_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous16 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %fifo_11_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous17[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous16[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_8_0_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous17[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous17[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous17[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %fifo_11_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_0_1_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_1_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_8_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_11_cons_lock_0, Release, 1)
      aie.end
    }
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      aie.use_lock(%pipe_0_1_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_12_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %pipe_0_1_0_buff_0[%2, %4] : memref<32x32xi32>
      memref.store %6, %fifo_12_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_3_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous19 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %fifo_12_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous20[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous19[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_7_0_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous20[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous20[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous20[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %fifo_12_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_1_0_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_7_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_12_cons_lock_0, Release, 1)
      aie.use_lock(%pipe_0_1_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_12_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %pipe_0_1_0_buff_1[%33, %35] : memref<32x32xi32>
      memref.store %37, %fifo_12_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_3_1_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous19 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %fifo_12_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous20[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous19[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_7_0_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous20[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous20[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous20[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %fifo_12_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_1_0_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_7_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_12_cons_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      aie.use_lock(%pipe_0_1_0_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_12_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %pipe_0_1_0_buff_0[%65, %67] : memref<32x32xi32>
      memref.store %69, %fifo_12_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_3_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_7_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_3_1_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous19 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %fifo_12_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous20[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous19[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_7_0_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous20[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous20[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous20[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %fifo_12_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_1_0_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_3_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_7_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_12_cons_lock_0, Release, 1)
      aie.end
    }
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb38
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb39
    ^bb2:  // pred: ^bb1
      aie.use_lock(%pipe_0_1_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_13_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c32 = arith.constant 32 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c32 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c32_3 = arith.constant 32 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c32_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %pipe_0_1_1_buff_0[%2, %4] : memref<32x32xi32>
      memref.store %6, %fifo_13_buff_0[%2, %4] : memref<32x32xi32>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      %8 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%8 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%fifo_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_8_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c4 = arith.constant 4 : index
      %c1_6 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%9: index):  // 2 preds: ^bb8, ^bb19
      %10 = arith.cmpi slt, %9, %c4 : index
      cf.cond_br %10, ^bb10, ^bb20
    ^bb10:  // pred: ^bb9
      %subview = memref.subview %fifo_3_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview, %_anonymous22 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_7 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1_8 = arith.constant 1 : index
      cf.br ^bb11(%c0_7 : index)
    ^bb11(%11: index):  // 2 preds: ^bb10, ^bb18
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb12, ^bb19
    ^bb12:  // pred: ^bb11
      %c0_9 = arith.constant 0 : index
      %c32_10 = arith.constant 32 : index
      %c1_11 = arith.constant 1 : index
      cf.br ^bb13(%c0_9 : index)
    ^bb13(%13: index):  // 2 preds: ^bb12, ^bb17
      %14 = arith.cmpi slt, %13, %c32_10 : index
      cf.cond_br %14, ^bb14, ^bb18
    ^bb14:  // pred: ^bb13
      %c8_12 = arith.constant 8 : index
      %15 = arith.muli %9, %c8_12 overflow<nsw> : index
      %16 = arith.addi %15, %11 : index
      %17 = memref.load %fifo_13_buff_0[%16, %13] : memref<32x32xi32>
      memref.store %17, %_anonymous23[] : memref<i32>
      %c0_13 = arith.constant 0 : index
      %c32_14 = arith.constant 32 : index
      %c1_15 = arith.constant 1 : index
      cf.br ^bb15(%c0_13 : index)
    ^bb15(%18: index):  // 2 preds: ^bb14, ^bb16
      %19 = arith.cmpi slt, %18, %c32_14 : index
      cf.cond_br %19, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      %20 = memref.load %_anonymous22[%11, %18] : memref<8x32xi16>
      %21 = memref.load %fifo_8_1_cons_buff_0[%18, %13] : memref<32x32xi16>
      %22 = arith.muli %20, %21 : i16
      %23 = memref.load %_anonymous23[] : memref<i32>
      %24 = arith.extsi %22 : i16 to i32
      %25 = arith.addi %23, %24 : i32
      memref.store %25, %_anonymous23[] : memref<i32>
      %26 = arith.addi %18, %c1_15 : index
      cf.br ^bb15(%26 : index)
    ^bb17:  // pred: ^bb15
      %27 = memref.load %_anonymous23[] : memref<i32>
      %c8_16 = arith.constant 8 : index
      %28 = arith.muli %9, %c8_16 overflow<nsw> : index
      %29 = arith.addi %28, %11 : index
      memref.store %27, %fifo_13_buff_0[%29, %13] : memref<32x32xi32>
      %30 = arith.addi %13, %c1_11 : index
      cf.br ^bb13(%30 : index)
    ^bb18:  // pred: ^bb13
      %31 = arith.addi %11, %c1_8 : index
      cf.br ^bb11(%31 : index)
    ^bb19:  // pred: ^bb11
      %32 = arith.addi %9, %c1_6 : index
      cf.br ^bb9(%32 : index)
    ^bb20:  // pred: ^bb9
      aie.use_lock(%pipe_0_1_1_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_8_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_13_cons_lock_0, Release, 1)
      aie.use_lock(%pipe_0_1_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_13_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_17 = arith.constant 0 : index
      %c32_18 = arith.constant 32 : index
      %c1_19 = arith.constant 1 : index
      cf.br ^bb21(%c0_17 : index)
    ^bb21(%33: index):  // 2 preds: ^bb20, ^bb25
      %34 = arith.cmpi slt, %33, %c32_18 : index
      cf.cond_br %34, ^bb22, ^bb26
    ^bb22:  // pred: ^bb21
      %c0_20 = arith.constant 0 : index
      %c32_21 = arith.constant 32 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb23(%c0_20 : index)
    ^bb23(%35: index):  // 2 preds: ^bb22, ^bb24
      %36 = arith.cmpi slt, %35, %c32_21 : index
      cf.cond_br %36, ^bb24, ^bb25
    ^bb24:  // pred: ^bb23
      %37 = memref.load %pipe_0_1_1_buff_1[%33, %35] : memref<32x32xi32>
      memref.store %37, %fifo_13_buff_1[%33, %35] : memref<32x32xi32>
      %38 = arith.addi %35, %c1_22 : index
      cf.br ^bb23(%38 : index)
    ^bb25:  // pred: ^bb23
      %39 = arith.addi %33, %c1_19 : index
      cf.br ^bb21(%39 : index)
    ^bb26:  // pred: ^bb21
      aie.use_lock(%fifo_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_8_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c4_24 = arith.constant 4 : index
      %c1_25 = arith.constant 1 : index
      cf.br ^bb27(%c0_23 : index)
    ^bb27(%40: index):  // 2 preds: ^bb26, ^bb37
      %41 = arith.cmpi slt, %40, %c4_24 : index
      cf.cond_br %41, ^bb28, ^bb38
    ^bb28:  // pred: ^bb27
      %subview_26 = memref.subview %fifo_3_0_cons_buff_1[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_26, %_anonymous22 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_27 = arith.constant 0 : index
      %c8_28 = arith.constant 8 : index
      %c1_29 = arith.constant 1 : index
      cf.br ^bb29(%c0_27 : index)
    ^bb29(%42: index):  // 2 preds: ^bb28, ^bb36
      %43 = arith.cmpi slt, %42, %c8_28 : index
      cf.cond_br %43, ^bb30, ^bb37
    ^bb30:  // pred: ^bb29
      %c0_30 = arith.constant 0 : index
      %c32_31 = arith.constant 32 : index
      %c1_32 = arith.constant 1 : index
      cf.br ^bb31(%c0_30 : index)
    ^bb31(%44: index):  // 2 preds: ^bb30, ^bb35
      %45 = arith.cmpi slt, %44, %c32_31 : index
      cf.cond_br %45, ^bb32, ^bb36
    ^bb32:  // pred: ^bb31
      %c8_33 = arith.constant 8 : index
      %46 = arith.muli %40, %c8_33 overflow<nsw> : index
      %47 = arith.addi %46, %42 : index
      %48 = memref.load %fifo_13_buff_1[%47, %44] : memref<32x32xi32>
      memref.store %48, %_anonymous23[] : memref<i32>
      %c0_34 = arith.constant 0 : index
      %c32_35 = arith.constant 32 : index
      %c1_36 = arith.constant 1 : index
      cf.br ^bb33(%c0_34 : index)
    ^bb33(%49: index):  // 2 preds: ^bb32, ^bb34
      %50 = arith.cmpi slt, %49, %c32_35 : index
      cf.cond_br %50, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %51 = memref.load %_anonymous22[%42, %49] : memref<8x32xi16>
      %52 = memref.load %fifo_8_1_cons_buff_1[%49, %44] : memref<32x32xi16>
      %53 = arith.muli %51, %52 : i16
      %54 = memref.load %_anonymous23[] : memref<i32>
      %55 = arith.extsi %53 : i16 to i32
      %56 = arith.addi %54, %55 : i32
      memref.store %56, %_anonymous23[] : memref<i32>
      %57 = arith.addi %49, %c1_36 : index
      cf.br ^bb33(%57 : index)
    ^bb35:  // pred: ^bb33
      %58 = memref.load %_anonymous23[] : memref<i32>
      %c8_37 = arith.constant 8 : index
      %59 = arith.muli %40, %c8_37 overflow<nsw> : index
      %60 = arith.addi %59, %42 : index
      memref.store %58, %fifo_13_buff_1[%60, %44] : memref<32x32xi32>
      %61 = arith.addi %44, %c1_32 : index
      cf.br ^bb31(%61 : index)
    ^bb36:  // pred: ^bb31
      %62 = arith.addi %42, %c1_29 : index
      cf.br ^bb29(%62 : index)
    ^bb37:  // pred: ^bb29
      %63 = arith.addi %40, %c1_25 : index
      cf.br ^bb27(%63 : index)
    ^bb38:  // pred: ^bb27
      aie.use_lock(%pipe_0_1_1_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_8_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_13_cons_lock_0, Release, 1)
      %64 = arith.addi %0, %c2 : index
      cf.br ^bb1(%64 : index)
    ^bb39:  // pred: ^bb1
      aie.use_lock(%pipe_0_1_1_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_13_prod_lock_0, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c32_39 = arith.constant 32 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb40(%c0_38 : index)
    ^bb40(%65: index):  // 2 preds: ^bb39, ^bb44
      %66 = arith.cmpi slt, %65, %c32_39 : index
      cf.cond_br %66, ^bb41, ^bb45
    ^bb41:  // pred: ^bb40
      %c0_41 = arith.constant 0 : index
      %c32_42 = arith.constant 32 : index
      %c1_43 = arith.constant 1 : index
      cf.br ^bb42(%c0_41 : index)
    ^bb42(%67: index):  // 2 preds: ^bb41, ^bb43
      %68 = arith.cmpi slt, %67, %c32_42 : index
      cf.cond_br %68, ^bb43, ^bb44
    ^bb43:  // pred: ^bb42
      %69 = memref.load %pipe_0_1_1_buff_0[%65, %67] : memref<32x32xi32>
      memref.store %69, %fifo_13_buff_0[%65, %67] : memref<32x32xi32>
      %70 = arith.addi %67, %c1_43 : index
      cf.br ^bb42(%70 : index)
    ^bb44:  // pred: ^bb42
      %71 = arith.addi %65, %c1_40 : index
      cf.br ^bb40(%71 : index)
    ^bb45:  // pred: ^bb40
      aie.use_lock(%fifo_3_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%fifo_8_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_44 = arith.constant 0 : index
      %c4_45 = arith.constant 4 : index
      %c1_46 = arith.constant 1 : index
      cf.br ^bb46(%c0_44 : index)
    ^bb46(%72: index):  // 2 preds: ^bb45, ^bb56
      %73 = arith.cmpi slt, %72, %c4_45 : index
      cf.cond_br %73, ^bb47, ^bb57
    ^bb47:  // pred: ^bb46
      %subview_47 = memref.subview %fifo_3_0_cons_buff_0[0, 0] [8, 32] [1, 1] {from = "local_A"} : memref<32x32xi16> to memref<8x32xi16, strided<[32, 1]>>
      memref.copy %subview_47, %_anonymous22 {to = "A_sub"} : memref<8x32xi16, strided<[32, 1]>> to memref<8x32xi16>
      %c0_48 = arith.constant 0 : index
      %c8_49 = arith.constant 8 : index
      %c1_50 = arith.constant 1 : index
      cf.br ^bb48(%c0_48 : index)
    ^bb48(%74: index):  // 2 preds: ^bb47, ^bb55
      %75 = arith.cmpi slt, %74, %c8_49 : index
      cf.cond_br %75, ^bb49, ^bb56
    ^bb49:  // pred: ^bb48
      %c0_51 = arith.constant 0 : index
      %c32_52 = arith.constant 32 : index
      %c1_53 = arith.constant 1 : index
      cf.br ^bb50(%c0_51 : index)
    ^bb50(%76: index):  // 2 preds: ^bb49, ^bb54
      %77 = arith.cmpi slt, %76, %c32_52 : index
      cf.cond_br %77, ^bb51, ^bb55
    ^bb51:  // pred: ^bb50
      %c8_54 = arith.constant 8 : index
      %78 = arith.muli %72, %c8_54 overflow<nsw> : index
      %79 = arith.addi %78, %74 : index
      %80 = memref.load %fifo_13_buff_0[%79, %76] : memref<32x32xi32>
      memref.store %80, %_anonymous23[] : memref<i32>
      %c0_55 = arith.constant 0 : index
      %c32_56 = arith.constant 32 : index
      %c1_57 = arith.constant 1 : index
      cf.br ^bb52(%c0_55 : index)
    ^bb52(%81: index):  // 2 preds: ^bb51, ^bb53
      %82 = arith.cmpi slt, %81, %c32_56 : index
      cf.cond_br %82, ^bb53, ^bb54
    ^bb53:  // pred: ^bb52
      %83 = memref.load %_anonymous22[%74, %81] : memref<8x32xi16>
      %84 = memref.load %fifo_8_1_cons_buff_0[%81, %76] : memref<32x32xi16>
      %85 = arith.muli %83, %84 : i16
      %86 = memref.load %_anonymous23[] : memref<i32>
      %87 = arith.extsi %85 : i16 to i32
      %88 = arith.addi %86, %87 : i32
      memref.store %88, %_anonymous23[] : memref<i32>
      %89 = arith.addi %81, %c1_57 : index
      cf.br ^bb52(%89 : index)
    ^bb54:  // pred: ^bb52
      %90 = memref.load %_anonymous23[] : memref<i32>
      %c8_58 = arith.constant 8 : index
      %91 = arith.muli %72, %c8_58 overflow<nsw> : index
      %92 = arith.addi %91, %74 : index
      memref.store %90, %fifo_13_buff_0[%92, %76] : memref<32x32xi32>
      %93 = arith.addi %76, %c1_53 : index
      cf.br ^bb50(%93 : index)
    ^bb55:  // pred: ^bb50
      %94 = arith.addi %74, %c1_50 : index
      cf.br ^bb48(%94 : index)
    ^bb56:  // pred: ^bb48
      %95 = arith.addi %72, %c1_46 : index
      cf.br ^bb46(%95 : index)
    ^bb57:  // pred: ^bb46
      aie.use_lock(%pipe_0_1_1_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_3_0_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_8_1_cons_prod_lock_0, Release, 1)
      aie.use_lock(%fifo_13_cons_lock_0, Release, 1)
      aie.end
    }
    aiex.runtime_sequence(%arg0: memref<4096xi16>, %arg1: memref<4096xi32>, %arg2: memref<4096xi16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][2, 2, 32, 32][2048, 32, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_4} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][2, 2, 32, 32][2048, 32, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_9} : memref<4096xi16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][2, 2, 32, 32][2048, 32, 64, 1]) {id = 0 : i64, issue_token = true, metadata = @fifo_14} : memref<4096xi32>
      aiex.npu.dma_wait {symbol = @fifo_14}
      aie.end
    }
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_4_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_4_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_4_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 2, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%fifo_4_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%fifo_4_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 3, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%fifo_4_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%fifo_4_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%fifo_4_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 0, ^bb13, ^bb21)
    ^bb13:  // 2 preds: ^bb12, ^bb20
      aie.use_lock(%fifo_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%fifo_4_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%fifo_4_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%fifo_4_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_0 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%fifo_4_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb18
    ^bb18:  // pred: ^bb17
      aie.use_lock(%fifo_4_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb19
    ^bb19:  // pred: ^bb18
      aie.use_lock(%fifo_4_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%fifo_4_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_4_cons_buff_1 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 11 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_4_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb13
    ^bb21:  // pred: ^bb12
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_0_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_0_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_0_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_0_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_6_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_6_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_6_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_6_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_6_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_6_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_0_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_0_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_0_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_0_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_5_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_5_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_5_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_5_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_1_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_1_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_7_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_7_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_7_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_7_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_7_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_7_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%fifo_10_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_10_buff_0 : memref<32x32xi32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_10_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%fifo_10_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_10_buff_1 : memref<32x32xi32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_10_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_1_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_1_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_1_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_8_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_8_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_8_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_8_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_8_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_8_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%fifo_11_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_11_buff_0 : memref<32x32xi32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_11_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%fifo_11_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_11_buff_1 : memref<32x32xi32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_11_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_2_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_2_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_2_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_2_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_6_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_6_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_6_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_6_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_2_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_2_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_2_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_2_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_5_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_5_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_5_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_5_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_5_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_5_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_3_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_3_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_8_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_8_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_8_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_8_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_8_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_8_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%fifo_13_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_13_buff_0 : memref<32x32xi32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_13_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%fifo_13_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_13_buff_1 : memref<32x32xi32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_13_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_1_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_3_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_3_1_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_3_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_7_0_cons_buff_0 : memref<32x32xi16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_7_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_7_0_cons_buff_1 : memref<32x32xi16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_7_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%fifo_12_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_12_buff_0 : memref<32x32xi32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_12_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%fifo_12_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_12_buff_1 : memref<32x32xi32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_12_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @fifo_4(MM2S, 0, 0)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_9_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_9_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_9_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_9_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 2, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%fifo_9_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%fifo_9_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 3, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%fifo_9_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%fifo_9_cons_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%fifo_9_cons_prod_lock_3, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 0, ^bb13, ^bb21)
    ^bb13:  // 2 preds: ^bb12, ^bb20
      aie.use_lock(%fifo_9_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%fifo_9_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%fifo_9_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%fifo_9_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_0 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%fifo_9_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 0, 1024) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb18
    ^bb18:  // pred: ^bb17
      aie.use_lock(%fifo_9_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 1024, 1024) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb19
    ^bb19:  // pred: ^bb18
      aie.use_lock(%fifo_9_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 2048, 1024) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%fifo_9_cons_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_9_cons_buff_1 : memref<2x2x32x32xi16>, 3072, 1024) {bd_id = 11 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_9_cons_cons_lock_3, Release, 1)
      aie.next_bd ^bb13
    ^bb21:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @fifo_9(MM2S, 0, 1)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%fifo_14_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%fifo_14_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%fifo_14_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%fifo_14_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%fifo_14_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 1024, 1024) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%fifo_14_cons_lock_1, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%fifo_14_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 1024, 1024) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%fifo_14_cons_lock_1, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 2, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%fifo_14_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 2048, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%fifo_14_cons_lock_2, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%fifo_14_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 2048, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%fifo_14_cons_lock_2, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 3, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%fifo_14_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 3072, 1024) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%fifo_14_cons_lock_3, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%fifo_14_prod_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 3072, 1024) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%fifo_14_cons_lock_3, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 0, ^bb13, ^bb21)
    ^bb13:  // 2 preds: ^bb12, ^bb20
      aie.use_lock(%fifo_14_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%fifo_14_prod_lock_0, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%fifo_14_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 1024, 1024) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%fifo_14_prod_lock_1, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%fifo_14_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 2048, 1024) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%fifo_14_prod_lock_2, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%fifo_14_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_0 : memref<2x2x32x32xi32>, 3072, 1024) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%fifo_14_prod_lock_3, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%fifo_14_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 0, 1024) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%fifo_14_prod_lock_0, Release, 1)
      aie.next_bd ^bb18
    ^bb18:  // pred: ^bb17
      aie.use_lock(%fifo_14_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 1024, 1024) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%fifo_14_prod_lock_1, Release, 1)
      aie.next_bd ^bb19
    ^bb19:  // pred: ^bb18
      aie.use_lock(%fifo_14_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 2048, 1024) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%fifo_14_prod_lock_2, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%fifo_14_cons_lock_3, AcquireGreaterEqual, 1)
      aie.dma_bd(%fifo_14_buff_1 : memref<2x2x32x32xi32>, 3072, 1024) {bd_id = 11 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%fifo_14_prod_lock_3, Release, 1)
      aie.next_bd ^bb13
    ^bb21:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @fifo_14(S2MM, 0, 2)
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
    aie.wire(%shim_mux_0_0 : North, %switchbox_0_0 : South)
    aie.wire(%shim_noc_tile_0_0 : DMA, %shim_mux_0_0 : DMA)
    aie.wire(%mem_tile_0_1 : Core, %switchbox_0_1 : Core)
    aie.wire(%mem_tile_0_1 : DMA, %switchbox_0_1 : DMA)
    aie.wire(%switchbox_0_0 : North, %switchbox_0_1 : South)
    aie.wire(%tile_0_2 : Core, %switchbox_0_2 : Core)
    aie.wire(%tile_0_2 : DMA, %switchbox_0_2 : DMA)
    aie.wire(%switchbox_0_1 : North, %switchbox_0_2 : South)
    aie.wire(%tile_0_3 : Core, %switchbox_0_3 : Core)
    aie.wire(%tile_0_3 : DMA, %switchbox_0_3 : DMA)
    aie.wire(%switchbox_0_2 : North, %switchbox_0_3 : South)
    aie.wire(%switchbox_0_0 : East, %switchbox_1_0 : West)
    aie.wire(%shim_mux_1_0 : North, %switchbox_1_0 : South)
    aie.wire(%shim_noc_tile_1_0 : DMA, %shim_mux_1_0 : DMA)
    aie.wire(%switchbox_0_1 : East, %switchbox_1_1 : West)
    aie.wire(%mem_tile_1_1 : Core, %switchbox_1_1 : Core)
    aie.wire(%mem_tile_1_1 : DMA, %switchbox_1_1 : DMA)
    aie.wire(%switchbox_1_0 : North, %switchbox_1_1 : South)
    aie.wire(%switchbox_0_2 : East, %switchbox_1_2 : West)
    aie.wire(%tile_1_2 : Core, %switchbox_1_2 : Core)
    aie.wire(%tile_1_2 : DMA, %switchbox_1_2 : DMA)
    aie.wire(%switchbox_1_1 : North, %switchbox_1_2 : South)
    aie.wire(%switchbox_0_3 : East, %switchbox_1_3 : West)
    aie.wire(%tile_1_3 : Core, %switchbox_1_3 : Core)
    aie.wire(%tile_1_3 : DMA, %switchbox_1_3 : DMA)
    aie.wire(%switchbox_1_2 : North, %switchbox_1_3 : South)
    aie.wire(%switchbox_1_0 : East, %switchbox_2_0 : West)
    aie.wire(%shim_mux_2_0 : North, %switchbox_2_0 : South)
    aie.wire(%shim_noc_tile_2_0 : DMA, %shim_mux_2_0 : DMA)
    aie.wire(%switchbox_1_1 : East, %switchbox_2_1 : West)
    aie.wire(%mem_tile_2_1 : Core, %switchbox_2_1 : Core)
    aie.wire(%mem_tile_2_1 : DMA, %switchbox_2_1 : DMA)
    aie.wire(%switchbox_2_0 : North, %switchbox_2_1 : South)
    aie.wire(%switchbox_1_2 : East, %switchbox_2_2 : West)
    aie.wire(%tile_2_2 : Core, %switchbox_2_2 : Core)
    aie.wire(%tile_2_2 : DMA, %switchbox_2_2 : DMA)
    aie.wire(%switchbox_2_1 : North, %switchbox_2_2 : South)
    aie.wire(%switchbox_1_3 : East, %switchbox_2_3 : West)
    aie.wire(%tile_2_3 : Core, %switchbox_2_3 : Core)
    aie.wire(%tile_2_3 : DMA, %switchbox_2_3 : DMA)
    aie.wire(%switchbox_2_2 : North, %switchbox_2_3 : South)
    aie.wire(%switchbox_2_0 : East, %switchbox_3_0 : West)
    aie.wire(%switchbox_2_2 : East, %switchbox_3_2 : West)
    aie.wire(%tile_3_2 : Core, %switchbox_3_2 : Core)
    aie.wire(%tile_3_2 : DMA, %switchbox_3_2 : DMA)
    aie.wire(%switchbox_2_3 : East, %switchbox_3_3 : West)
    aie.wire(%tile_3_3 : Core, %switchbox_3_3 : Core)
    aie.wire(%tile_3_3 : DMA, %switchbox_3_3 : DMA)
    aie.wire(%switchbox_3_2 : North, %switchbox_3_3 : South)
  }
}


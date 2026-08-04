module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @_anonymous2() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @_anonymous1() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @_anonymous0() {addr_space = 0 : i32} : !llvm.array<2 x array<32 x array<64 x i16>>>
  llvm.mlir.global external @pipe_b_0_src_buff_0() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @pipe_b_0_src_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @pipe_b_0_dst_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_src_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_src_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_src_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_src_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_dst_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_dst_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @fifo_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<64 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<64 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @fifo_2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @fifo_3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<32 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<32 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_4_buff_1() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_4_buff_0() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @fifo_5_cons() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<64 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_5() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<64 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_4_cons() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_4() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_3_cons() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<32 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_3() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<32 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_2_cons() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @fifo_2() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @fifo_1_cons() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<64 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_1() {addr_space = 0 : i32} : !llvm.array<1 x array<1 x array<64 x array<64 x i16>>>>
  llvm.mlir.global external @fifo_0_cons() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @fifo_0() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_dst_cons() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_dst() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_src_cons() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_c_0_src() {addr_space = 0 : i32} : !llvm.array<32 x array<64 x i16>>
  llvm.mlir.global external @pipe_b_0_dst_cons() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @pipe_b_0_dst() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @pipe_b_0_src_cons() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.mlir.global external @pipe_b_0_src() {addr_space = 0 : i32} : !llvm.array<64 x array<64 x i16>>
  llvm.func @fill_zeros_i16_32_64_vector(!llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @matmul_scalar_i16_i16(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @matmul_i16_i16(!llvm.ptr, !llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @fifo_2_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @pipe_c_0_src_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @pipe_b_0_dst_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.addressof @fifo_2_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @pipe_c_0_src_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(32 : index) : i64
    %7 = llvm.mlir.constant(52 : i32) : i32
    %8 = llvm.mlir.constant(51 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(53 : i32) : i32
    %11 = llvm.mlir.constant(50 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(1 : i32) : i32
    %14 = llvm.mlir.constant(-1 : i32) : i32
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%16 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb2
    %19 = llvm.icmp "slt" %18, %17 : i64
    llvm.cond_br %19, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    %20 = llvm.getelementptr %5[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%20, %6 : !llvm.ptr, i64)] : i1
    llvm.call @fill_zeros_i16_32_64_vector(%20) {lib = "fill_zeros_i16_32_64_vector"} : (!llvm.ptr) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    %21 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%21, %6 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%20, %6 : !llvm.ptr, i64)] : i1
    %22 = llvm.getelementptr %2[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%22, %6 : !llvm.ptr, i64)] : i1
    llvm.call @matmul_i16_i16(%21, %22, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    %23 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%23, %6 : !llvm.ptr, i64)] : i1
    llvm.call @fill_zeros_i16_32_64_vector(%23) {lib = "fill_zeros_i16_32_64_vector"} : (!llvm.ptr) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    %24 = llvm.getelementptr %0[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%24, %6 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%23, %6 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%22, %6 : !llvm.ptr, i64)] : i1
    llvm.call @matmul_i16_i16(%24, %22, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    %25 = llvm.add %18, %15 : i64
    llvm.br ^bb1(%25 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    %26 = llvm.getelementptr %5[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%26, %6 : !llvm.ptr, i64)] : i1
    llvm.call @fill_zeros_i16_32_64_vector(%26) {lib = "fill_zeros_i16_32_64_vector"} : (!llvm.ptr) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    %27 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%27, %6 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%26, %6 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %2[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%28, %6 : !llvm.ptr, i64)] : i1
    llvm.call @matmul_i16_i16(%27, %28, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @fifo_4_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @fifo_4_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @pipe_c_0_dst_cons_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @pipe_c_0_dst_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @_anonymous0 : !llvm.ptr
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(64 : index) : i64
    %9 = llvm.mlir.constant(32 : index) : i64
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(50 : i32) : i32
    %12 = llvm.mlir.constant(48 : i32) : i32
    %13 = llvm.mlir.constant(49 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%17 : i64)
  ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb2
    %20 = llvm.icmp "slt" %19, %18 : i64
    llvm.cond_br %20, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %15) : (i32, i32) -> ()
    %21 = llvm.getelementptr %5[0, 0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x array<32 x array<64 x i16>>>
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    %22 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%22, %9 : !llvm.ptr, i64)] : i1
    %23 = llvm.mul %9, %7 : i64
    %24 = llvm.mul %23, %8 : i64
    %25 = llvm.getelementptr %6[1] : (!llvm.ptr) -> !llvm.ptr, i16
    %26 = llvm.ptrtoint %25 : !llvm.ptr to i64
    %27 = llvm.mul %24, %26 : i64
    "llvm.intr.memcpy"(%21, %22, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %15) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %2[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%28, %9 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %21[2048] : (!llvm.ptr) -> !llvm.ptr, i16
    "llvm.intr.memcpy"(%29, %28, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%30, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%30, %21, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%30, %29, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %15) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%22, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%21, %22, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %15) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%28, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%29, %28, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %0[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%31, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%31, %21, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.intr.assume %4 ["align"(%21, %9 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%31, %29, %27) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    %32 = llvm.add %19, %16 : i64
    llvm.br ^bb1(%32 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %15) : (i32, i32) -> ()
    %33 = llvm.getelementptr %5[0, 0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x array<32 x array<64 x i16>>>
    llvm.intr.assume %4 ["align"(%33, %9 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%34, %9 : !llvm.ptr, i64)] : i1
    %35 = llvm.mul %9, %7 : i64
    %36 = llvm.mul %35, %8 : i64
    %37 = llvm.getelementptr %6[1] : (!llvm.ptr) -> !llvm.ptr, i16
    %38 = llvm.ptrtoint %37 : !llvm.ptr to i64
    %39 = llvm.mul %36, %38 : i64
    "llvm.intr.memcpy"(%33, %34, %39) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %15) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%33, %9 : !llvm.ptr, i64)] : i1
    %40 = llvm.getelementptr %2[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%40, %9 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %33[2048] : (!llvm.ptr) -> !llvm.ptr, i16
    "llvm.intr.memcpy"(%41, %40, %39) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%12, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%33, %9 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %4 ["align"(%42, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%42, %33, %39) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.intr.assume %4 ["align"(%33, %9 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%42, %9 : !llvm.ptr, i64)] : i1
    "llvm.intr.memcpy"(%42, %41, %39) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @fifo_0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @pipe_b_0_src_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @fifo_0_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(50 : i32) : i32
    %6 = llvm.mlir.constant(49 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(64 : index) : i64
    %11 = llvm.mlir.constant(-1 : i32) : i32
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb12
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb3(%13 : i64)
  ^bb3(%18: i64):  // 2 preds: ^bb2, ^bb6
    %19 = llvm.icmp "slt" %18, %10 : i64
    llvm.cond_br %19, ^bb4(%13 : i64), ^bb7
  ^bb4(%20: i64):  // 2 preds: ^bb3, ^bb5
    %21 = llvm.icmp "slt" %20, %10 : i64
    llvm.cond_br %21, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %22 = llvm.getelementptr %4[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %3 ["align"(%22, %2 : !llvm.ptr, i64)] : i1
    %23 = llvm.mul %18, %10 : i64
    %24 = llvm.add %23, %20 : i64
    %25 = llvm.getelementptr %22[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    %26 = llvm.load %25 : !llvm.ptr -> i16
    %27 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %3 ["align"(%27, %2 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %27[%24] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    llvm.store %26, %28 : i16, !llvm.ptr
    %29 = llvm.add %20, %14 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    %30 = llvm.add %18, %14 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb8(%13 : i64)
  ^bb8(%31: i64):  // 2 preds: ^bb7, ^bb11
    %32 = llvm.icmp "slt" %31, %10 : i64
    llvm.cond_br %32, ^bb9(%13 : i64), ^bb12
  ^bb9(%33: i64):  // 2 preds: ^bb8, ^bb10
    %34 = llvm.icmp "slt" %33, %10 : i64
    llvm.cond_br %34, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %35 = llvm.getelementptr %0[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %3 ["align"(%35, %2 : !llvm.ptr, i64)] : i1
    %36 = llvm.mul %31, %10 : i64
    %37 = llvm.add %36, %33 : i64
    %38 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    %39 = llvm.load %38 : !llvm.ptr -> i16
    %40 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %3 ["align"(%40, %2 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %40[%37] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    llvm.store %39, %41 : i16, !llvm.ptr
    %42 = llvm.add %33, %14 : i64
    llvm.br ^bb9(%42 : i64)
  ^bb11:  // pred: ^bb9
    %43 = llvm.add %31, %14 : i64
    llvm.br ^bb8(%43 : i64)
  ^bb12:  // pred: ^bb8
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %44 = llvm.add %16, %12 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb13:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%8, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %11) : (i32, i32) -> ()
    llvm.br ^bb14(%13 : i64)
  ^bb14(%45: i64):  // 2 preds: ^bb13, ^bb17
    %46 = llvm.icmp "slt" %45, %10 : i64
    llvm.cond_br %46, ^bb15(%13 : i64), ^bb18
  ^bb15(%47: i64):  // 2 preds: ^bb14, ^bb16
    %48 = llvm.icmp "slt" %47, %10 : i64
    llvm.cond_br %48, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %49 = llvm.getelementptr %4[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %3 ["align"(%49, %2 : !llvm.ptr, i64)] : i1
    %50 = llvm.mul %45, %10 : i64
    %51 = llvm.add %50, %47 : i64
    %52 = llvm.getelementptr %49[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    %53 = llvm.load %52 : !llvm.ptr -> i16
    %54 = llvm.getelementptr %1[0, 0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<64 x array<64 x i16>>
    llvm.intr.assume %3 ["align"(%54, %2 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %54[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i16
    llvm.store %53, %55 : i16, !llvm.ptr
    %56 = llvm.add %47, %14 : i64
    llvm.br ^bb15(%56 : i64)
  ^bb17:  // pred: ^bb15
    %57 = llvm.add %45, %14 : i64
    llvm.br ^bb14(%57 : i64)
  ^bb18:  // pred: ^bb14
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.return
  }
}


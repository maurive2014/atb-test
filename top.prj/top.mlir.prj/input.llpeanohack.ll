; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@_anonymous2 = external global [64 x [64 x i16]]
@_anonymous1 = external global [32 x [64 x i16]]
@_anonymous0 = external global [2 x [32 x [64 x i16]]]
@pipe_b_0_src_buff_0 = external global [64 x [64 x i16]]
@pipe_b_0_src_cons_buff_0 = external global [64 x [64 x i16]]
@pipe_b_0_dst_cons_buff_0 = external global [64 x [64 x i16]]
@pipe_c_0_src_buff_1 = external global [32 x [64 x i16]]
@pipe_c_0_src_buff_0 = external global [32 x [64 x i16]]
@pipe_c_0_src_cons_buff_1 = external global [32 x [64 x i16]]
@pipe_c_0_src_cons_buff_0 = external global [32 x [64 x i16]]
@pipe_c_0_dst_cons_buff_1 = external global [32 x [64 x i16]]
@pipe_c_0_dst_cons_buff_0 = external global [32 x [64 x i16]]
@fifo_0_cons_buff_1 = external global [64 x [64 x i16]]
@fifo_0_cons_buff_0 = external global [64 x [64 x i16]]
@fifo_1_cons_buff_1 = external global [1 x [1 x [64 x [64 x i16]]]]
@fifo_1_cons_buff_0 = external global [1 x [1 x [64 x [64 x i16]]]]
@fifo_2_cons_buff_1 = external global [32 x [64 x i16]]
@fifo_2_cons_buff_0 = external global [32 x [64 x i16]]
@fifo_3_cons_buff_1 = external global [1 x [1 x [32 x [64 x i16]]]]
@fifo_3_cons_buff_0 = external global [1 x [1 x [32 x [64 x i16]]]]
@fifo_4_buff_1 = external global [64 x [64 x i16]]
@fifo_4_buff_0 = external global [64 x [64 x i16]]
@fifo_4_cons_buff_1 = external global [64 x [64 x i16]]
@fifo_4_cons_buff_0 = external global [64 x [64 x i16]]
@fifo_5_cons = external global [1 x [1 x [64 x [64 x i16]]]]
@fifo_5 = external global [1 x [1 x [64 x [64 x i16]]]]
@fifo_4_cons = external global [64 x [64 x i16]]
@fifo_4 = external global [64 x [64 x i16]]
@fifo_3_cons = external global [1 x [1 x [32 x [64 x i16]]]]
@fifo_3 = external global [1 x [1 x [32 x [64 x i16]]]]
@fifo_2_cons = external global [32 x [64 x i16]]
@fifo_2 = external global [32 x [64 x i16]]
@fifo_1_cons = external global [1 x [1 x [64 x [64 x i16]]]]
@fifo_1 = external global [1 x [1 x [64 x [64 x i16]]]]
@fifo_0_cons = external global [64 x [64 x i16]]
@fifo_0 = external global [64 x [64 x i16]]
@pipe_c_0_dst_cons = external global [32 x [64 x i16]]
@pipe_c_0_dst = external global [32 x [64 x i16]]
@pipe_c_0_src_cons = external global [32 x [64 x i16]]
@pipe_c_0_src = external global [32 x [64 x i16]]
@pipe_b_0_dst_cons = external global [64 x [64 x i16]]
@pipe_b_0_dst = external global [64 x [64 x i16]]
@pipe_b_0_src_cons = external global [64 x [64 x i16]]
@pipe_b_0_src = external global [64 x [64 x i16]]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @fill_zeros_i16_32_64_vector(ptr)

declare void @matmul_scalar_i16_i16(ptr, ptr, ptr)

declare void @matmul_i16_i16(ptr, ptr, ptr)

define void @core_0_3() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  call void @fill_zeros_i16_32_64_vector(ptr @pipe_c_0_src_buff_0)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_dst_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @fifo_2_cons_buff_0, ptr @pipe_b_0_dst_cons_buff_0, ptr @pipe_c_0_src_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_1, i64 32) ]
  call void @fill_zeros_i16_32_64_vector(ptr @pipe_c_0_src_buff_1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_dst_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @fifo_2_cons_buff_1, ptr @pipe_b_0_dst_cons_buff_0, ptr @pipe_c_0_src_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  call void @fill_zeros_i16_32_64_vector(ptr @pipe_c_0_src_buff_0)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_dst_cons_buff_0, i64 32) ]
  call void @matmul_i16_i16(ptr @fifo_2_cons_buff_0, ptr @pipe_b_0_dst_cons_buff_0, ptr @pipe_c_0_src_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_0, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous0, ptr @pipe_c_0_dst_cons_buff_0, i64 4096, i1 false)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4096), ptr @pipe_c_0_dst_cons_buff_1, i64 4096, i1 false)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @fifo_4_buff_0, ptr @_anonymous0, i64 4096, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @fifo_4_buff_0, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4096), i64 4096, i1 false)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_0, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous0, ptr @pipe_c_0_dst_cons_buff_0, i64 4096, i1 false)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4096), ptr @pipe_c_0_dst_cons_buff_1, i64 4096, i1 false)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @fifo_4_buff_1, ptr @_anonymous0, i64 4096, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @fifo_4_buff_1, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4096), i64 4096, i1 false)
  call void @llvm.aie2.release(i32 51, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_0, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous0, ptr @pipe_c_0_dst_cons_buff_0, i64 4096, i1 false)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4096), ptr @pipe_c_0_dst_cons_buff_1, i64 4096, i1 false)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @fifo_4_buff_0, ptr @_anonymous0, i64 4096, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @fifo_4_buff_0, ptr getelementptr inbounds (i8, ptr @_anonymous0, i64 4096), i64 4096, i1 false)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %36, %0
  %2 = phi i64 [ %37, %36 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %38

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 64
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 64
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_cons_buff_0, i64 32) ]
  %12 = mul i64 %6, 64
  %13 = add i64 %12, %9
  %14 = getelementptr i16, ptr @fifo_0_cons_buff_0, i64 %13
  %15 = load i16, ptr %14, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_src_buff_0, i64 32) ]
  %16 = getelementptr i16, ptr @pipe_b_0_src_buff_0, i64 %13
  store i16 %15, ptr %16, align 2
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %21

21:                                               ; preds = %34, %20
  %22 = phi i64 [ %35, %34 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 64
  br i1 %23, label %24, label %36

24:                                               ; preds = %27, %21
  %25 = phi i64 [ %33, %27 ], [ 0, %21 ]
  %26 = icmp slt i64 %25, 64
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_cons_buff_1, i64 32) ]
  %28 = mul i64 %22, 64
  %29 = add i64 %28, %25
  %30 = getelementptr i16, ptr @fifo_0_cons_buff_1, i64 %29
  %31 = load i16, ptr %30, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_src_buff_0, i64 32) ]
  %32 = getelementptr i16, ptr @pipe_b_0_src_buff_0, i64 %29
  store i16 %31, ptr %32, align 2
  %33 = add i64 %25, 1
  br label %24

34:                                               ; preds = %24
  %35 = add i64 %22, 1
  br label %21

36:                                               ; preds = %21
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %37 = add i64 %2, 2
  br label %1

38:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %39

39:                                               ; preds = %52, %38
  %40 = phi i64 [ %53, %52 ], [ 0, %38 ]
  %41 = icmp slt i64 %40, 64
  br i1 %41, label %42, label %54

42:                                               ; preds = %45, %39
  %43 = phi i64 [ %51, %45 ], [ 0, %39 ]
  %44 = icmp slt i64 %43, 64
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_cons_buff_0, i64 32) ]
  %46 = mul i64 %40, 64
  %47 = add i64 %46, %43
  %48 = getelementptr i16, ptr @fifo_0_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_src_buff_0, i64 32) ]
  %50 = getelementptr i16, ptr @pipe_b_0_src_buff_0, i64 %47
  store i16 %49, ptr %50, align 2
  %51 = add i64 %43, 1
  br label %42

52:                                               ; preds = %42
  %53 = add i64 %40, 1
  br label %39

54:                                               ; preds = %39
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly , ptr noalias readonly , i64, i1 immarg) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

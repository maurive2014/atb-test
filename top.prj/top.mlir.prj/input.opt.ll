; ModuleID = '/home/omu4/ATB/atb-test/top.prj/top.mlir.prj/input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@_anonymous0 = external global [2 x [32 x [64 x i16]]]
@pipe_b_0_src_buff_0 = external global [64 x [64 x i16]]
@pipe_b_0_dst_cons_buff_0 = external global [64 x [64 x i16]]
@pipe_c_0_src_buff_1 = external global [32 x [64 x i16]]
@pipe_c_0_src_buff_0 = external global [32 x [64 x i16]]
@pipe_c_0_dst_cons_buff_1 = external global [32 x [64 x i16]]
@pipe_c_0_dst_cons_buff_0 = external global [32 x [64 x i16]]
@fifo_0_cons_buff_1 = external global [64 x [64 x i16]]
@fifo_0_cons_buff_0 = external global [64 x [64 x i16]]
@fifo_2_cons_buff_1 = external global [32 x [64 x i16]]
@fifo_2_cons_buff_0 = external global [32 x [64 x i16]]
@fifo_4_buff_1 = external global [64 x [64 x i16]]
@fifo_4_buff_0 = external global [64 x [64 x i16]]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @fill_zeros_i16_32_64_vector(ptr) local_unnamed_addr

declare void @matmul_i16_i16(ptr, ptr, ptr) local_unnamed_addr

define void @core_0_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  tail call void @fill_zeros_i16_32_64_vector(ptr nonnull @pipe_c_0_src_buff_0)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_dst_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @fifo_2_cons_buff_0, ptr nonnull @pipe_b_0_dst_cons_buff_0, ptr nonnull @pipe_c_0_src_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_1, i64 32) ]
  tail call void @fill_zeros_i16_32_64_vector(ptr nonnull @pipe_c_0_src_buff_1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_dst_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @fifo_2_cons_buff_1, ptr nonnull @pipe_b_0_dst_cons_buff_0, ptr nonnull @pipe_c_0_src_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  tail call void @fill_zeros_i16_32_64_vector(ptr nonnull @pipe_c_0_src_buff_0)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_src_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_dst_cons_buff_0, i64 32) ]
  tail call void @matmul_i16_i16(ptr nonnull @fifo_2_cons_buff_0, ptr nonnull @pipe_b_0_dst_cons_buff_0, ptr nonnull @pipe_c_0_src_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_c_0_dst_cons_buff_0, i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) getelementptr inbounds ([2 x [32 x [64 x i16]]], ptr @_anonymous0, i20 0, i20 1, i20 0, i20 0), ptr noundef nonnull align 32 dereferenceable(4096) @pipe_c_0_dst_cons_buff_1, i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_4_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) getelementptr inbounds ([2 x [32 x [64 x i16]]], ptr @_anonymous0, i20 0, i20 1, i20 0, i20 0), i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_c_0_dst_cons_buff_0, i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) getelementptr inbounds ([2 x [32 x [64 x i16]]], ptr @_anonymous0, i20 0, i20 1, i20 0, i20 0), ptr noundef nonnull align 32 dereferenceable(4096) @pipe_c_0_dst_cons_buff_1, i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_4_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) getelementptr inbounds ([2 x [32 x [64 x i16]]], ptr @_anonymous0, i20 0, i20 1, i20 0, i20 0), i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_c_0_dst_cons_buff_0, i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_c_0_dst_cons_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) getelementptr inbounds ([2 x [32 x [64 x i16]]], ptr @_anonymous0, i20 0, i20 1, i20 0, i20 0), ptr noundef nonnull align 32 dereferenceable(4096) @pipe_c_0_dst_cons_buff_1, i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_4_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_4_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) getelementptr inbounds ([2 x [32 x [64 x i16]]], ptr @_anonymous0, i20 0, i20 1, i20 0, i20 0), i64 4096, i1 false)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_4() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_src_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(8192) @pipe_b_0_src_buff_0, ptr noundef nonnull align 32 dereferenceable(8192) @fifo_0_cons_buff_0, i20 8192, i1 false)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_src_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(8192) @pipe_b_0_src_buff_0, ptr noundef nonnull align 32 dereferenceable(8192) @fifo_0_cons_buff_1, i20 8192, i1 false)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_b_0_src_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(8192) @pipe_b_0_src_buff_0, ptr noundef nonnull align 32 dereferenceable(8192) @fifo_0_cons_buff_0, i20 8192, i1 false)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i20(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i20, i1 immarg) #3

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

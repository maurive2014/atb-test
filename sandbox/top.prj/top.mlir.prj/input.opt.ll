; ModuleID = '/home/omu4/atb/sandbox/top.prj/top.mlir.prj/input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@_anonymous23 = external global i32
@_anonymous22 = external global [8 x [32 x i16]]
@_anonymous20 = external global i32
@_anonymous19 = external global [8 x [32 x i16]]
@_anonymous17 = external global i32
@_anonymous16 = external global [8 x [32 x i16]]
@_anonymous14 = external global i32
@_anonymous13 = external global [8 x [32 x i16]]
@_anonymous12 = external global [32 x [32 x i32]]
@_anonymous11 = external global i32
@_anonymous10 = external global [8 x [32 x i16]]
@_anonymous9 = external global [32 x [32 x i32]]
@_anonymous8 = external global i32
@_anonymous7 = external global [8 x [32 x i16]]
@_anonymous6 = external global [32 x [32 x i32]]
@_anonymous5 = external global i32
@_anonymous4 = external global [8 x [32 x i16]]
@_anonymous2 = external global i32
@_anonymous1 = external global [8 x [32 x i16]]
@_anonymous0 = external global [32 x [32 x i32]]
@pipe_0_0_0_buff_1 = external global [32 x [32 x i32]]
@pipe_0_0_0_buff_0 = external global [32 x [32 x i32]]
@pipe_0_0_1_buff_1 = external global [32 x [32 x i32]]
@pipe_0_0_1_buff_0 = external global [32 x [32 x i32]]
@pipe_0_1_0_buff_1 = external global [32 x [32 x i32]]
@pipe_0_1_0_buff_0 = external global [32 x [32 x i32]]
@pipe_0_1_1_buff_1 = external global [32 x [32 x i32]]
@pipe_0_1_1_buff_0 = external global [32 x [32 x i32]]
@fifo_0_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_0_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_0_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_0_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_1_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_1_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_1_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_1_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_2_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_2_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_2_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_2_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_3_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_3_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_3_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_3_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_5_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_5_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_5_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_5_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_6_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_6_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_6_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_6_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_7_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_7_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_7_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_7_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_8_1_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_8_1_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_8_0_cons_buff_1 = external global [32 x [32 x i16]]
@fifo_8_0_cons_buff_0 = external global [32 x [32 x i16]]
@fifo_10_buff_1 = external global [32 x [32 x i32]]
@fifo_10_buff_0 = external global [32 x [32 x i32]]
@fifo_11_buff_1 = external global [32 x [32 x i32]]
@fifo_11_buff_0 = external global [32 x [32 x i32]]
@fifo_12_buff_1 = external global [32 x [32 x i32]]
@fifo_12_buff_0 = external global [32 x [32 x i32]]
@fifo_13_buff_1 = external global [32 x [32 x i32]]
@fifo_13_buff_0 = external global [32 x [32 x i32]]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @fill_zeros_i32_32_32_vector(ptr) local_unnamed_addr

; Function Attrs: nounwind
define void @core_3_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_13_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_1_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @fifo_13_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous22, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous22, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous22, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous22, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @fifo_13_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous22, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous22, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous22, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous22, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @fifo_13_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous22, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous22, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous22, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous22, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @fifo_13_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous22, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous22, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous22, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous22, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @fifo_13_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous22, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous22, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous22, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous22, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @fifo_13_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous22, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous22, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous22, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous22, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @fifo_13_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous22, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous22, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous22, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous22, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @fifo_13_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous22, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous22, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous22, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous22, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous23, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_13_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_1_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @fifo_13_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous22, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous22, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous22, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous22, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @fifo_13_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous22, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous22, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous22, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous22, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @fifo_13_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous22, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous22, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous22, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous22, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @fifo_13_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous22, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous22, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous22, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous22, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @fifo_13_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous22, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous22, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous22, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous22, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @fifo_13_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous22, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous22, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous22, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous22, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @fifo_13_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous22, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous22, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous22, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous22, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @fifo_13_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous22, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous22, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous22, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous22, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous23, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_13_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_1_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous22, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous22, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous22, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous22, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous22, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous22, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous22, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous22, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous22, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous22, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous22, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous22, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous22, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous22, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous22, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous22, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous22, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous22, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous22, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous22, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous22, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous22, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous22, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous22, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous22, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous22, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous22, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous22, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous22, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @fifo_13_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous22, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous22, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous22, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous22, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous23, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_2_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_12_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_0_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @fifo_12_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous19, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous19, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous19, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous19, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @fifo_12_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous19, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous19, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous19, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous19, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @fifo_12_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous19, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous19, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous19, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous19, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @fifo_12_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous19, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous19, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous19, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous19, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @fifo_12_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous19, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous19, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous19, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous19, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @fifo_12_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous19, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous19, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous19, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous19, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @fifo_12_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous19, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous19, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous19, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous19, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @fifo_12_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous19, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous19, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous19, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous19, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous20, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_12_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_0_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @fifo_12_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous19, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous19, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous19, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous19, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @fifo_12_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous19, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous19, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous19, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous19, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @fifo_12_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous19, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous19, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous19, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous19, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @fifo_12_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous19, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous19, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous19, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous19, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @fifo_12_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous19, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous19, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous19, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous19, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @fifo_12_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous19, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous19, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous19, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous19, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @fifo_12_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous19, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous19, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous19, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous19, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @fifo_12_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous19, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous19, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous19, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous19, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous20, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_12_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_0_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous19, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous19, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous19, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous19, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous19, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous19, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous19, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous19, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous19, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous19, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous19, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous19, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous19, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous19, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous19, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous19, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous19, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous19, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous19, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous19, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous19, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous19, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous19, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous19, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous19, ptr noundef nonnull align 32 dereferenceable(512) @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous19, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous19, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous19, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous19, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @fifo_12_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous19, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous19, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous19, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous19, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous20, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_1_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_11_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_1_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @fifo_11_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous16, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous16, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous16, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous16, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @fifo_11_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous16, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous16, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous16, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous16, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @fifo_11_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous16, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous16, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous16, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous16, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @fifo_11_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous16, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous16, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous16, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous16, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @fifo_11_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous16, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous16, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous16, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous16, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @fifo_11_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous16, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous16, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous16, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous16, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @fifo_11_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous16, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous16, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous16, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous16, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @fifo_11_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous16, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous16, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous16, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous16, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous17, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_11_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_1_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @fifo_11_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous16, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous16, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous16, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous16, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @fifo_11_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous16, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous16, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous16, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous16, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @fifo_11_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous16, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous16, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous16, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous16, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @fifo_11_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous16, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous16, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous16, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous16, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @fifo_11_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous16, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous16, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous16, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous16, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @fifo_11_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous16, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous16, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous16, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous16, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @fifo_11_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous16, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous16, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous16, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous16, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @fifo_11_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous16, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous16, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous16, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous16, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous17, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_11_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_1_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous16, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous16, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous16, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous16, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous16, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous16, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous16, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous16, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous16, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous16, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous16, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous16, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous16, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous16, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous16, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous16, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous16, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous16, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous16, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous16, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous16, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous16, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous16, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous16, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous16, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous16, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous16, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous16, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous16, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @fifo_11_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous16, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous16, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous16, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous16, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous17, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_3() local_unnamed_addr {
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous12)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_1_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous12, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous13, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous13, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous13, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous13, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous13, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous13, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous13, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous13, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous13, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous13, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous13, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous13, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous13, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous13, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous13, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous13, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous13, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous13, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous13, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous13, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous13, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous13, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous13, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous13, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous13, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous13, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous13, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous13, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous13, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous13, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous13, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous13, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous14, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous12)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_1_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous12, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous13, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous13, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous13, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous13, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous13, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous13, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous13, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous13, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous13, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous13, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous13, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous13, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous13, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous13, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous13, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous13, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous13, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous13, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous13, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous13, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous13, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous13, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous13, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous13, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous13, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous13, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous13, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous13, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous13, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous13, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous13, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous13, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous14, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous12)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_1_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous12, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous13, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous13, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous13, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous13, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous13, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous13, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous13, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous13, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous13, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous13, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous13, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous13, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous13, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous13, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous13, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous13, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous13, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous13, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous13, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous13, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous13, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous13, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous13, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous13, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous13, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous13, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous13, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous13, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous13, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous13, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous13, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous13, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous13, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous14, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

define void @core_2_3() local_unnamed_addr {
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous9)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_0_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous9, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous10, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous10, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous10, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous10, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous10, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous10, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous10, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous10, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous10, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous10, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous10, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous10, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous10, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous10, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous10, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous10, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous10, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous10, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous10, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous10, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous10, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous10, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous10, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous10, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous10, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous10, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous10, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous10, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous10, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous10, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous10, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous10, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous11, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous9)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_0_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous9, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous10, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous10, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous10, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous10, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous10, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous10, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous10, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous10, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous10, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous10, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous10, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous10, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous10, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous10, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous10, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous10, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous10, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous10, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous10, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous10, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous10, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous10, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous10, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous10, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous10, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous10, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous10, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous10, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous10, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous10, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous10, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous10, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous11, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous9)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_1_0_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous9, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous10, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous10, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous10, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous10, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous10, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous10, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous10, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous10, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous10, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous10, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous10, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous10, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous10, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous10, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous10, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous10, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous10, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous10, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous10, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous10, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous10, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous10, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous10, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous10, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous10, ptr noundef nonnull align 32 dereferenceable(512) @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous10, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous10, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous10, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous10, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous10, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous10, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous10, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous10, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous11, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

define void @core_1_3() local_unnamed_addr {
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous6)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_1_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous6, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous7, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous7, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous7, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous7, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous7, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous7, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous7, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous7, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous7, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous7, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous7, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous7, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous7, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous7, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous7, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous7, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous7, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous7, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous7, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous7, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous7, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous7, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous7, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous7, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous7, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous7, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous7, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous7, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous7, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous7, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous7, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous7, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous8, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous6)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_1_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous6, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous7, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous7, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous7, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous7, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous7, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous7, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous7, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous7, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous7, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous7, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous7, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous7, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous7, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous7, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous7, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous7, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous7, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous7, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous7, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous7, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous7, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous7, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous7, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous7, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous7, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous7, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous7, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous7, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous7, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous7, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous7, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous7, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous8, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous6)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_1_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous6, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous7, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous7, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous7, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous7, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous7, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous7, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous7, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous7, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous7, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous7, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous7, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous7, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous7, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous7, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous7, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous7, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous7, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous7, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous7, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous7, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous7, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous7, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous7, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous7, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous7, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous7, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous7, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous7, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous7, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous7, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous7, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous7, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous7, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous8, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_10_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_0_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @fifo_10_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous4, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous4, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous4, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous4, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @fifo_10_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous4, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous4, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous4, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous4, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @fifo_10_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous4, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous4, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous4, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous4, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @fifo_10_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous4, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous4, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous4, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous4, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @fifo_10_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous4, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous4, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous4, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous4, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @fifo_10_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous4, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous4, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous4, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous4, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @fifo_10_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous4, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous4, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous4, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous4, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @fifo_10_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous4, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous4, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous4, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous4, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous5, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_10_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_0_buff_1, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @fifo_10_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous4, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous4, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous4, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous4, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @fifo_10_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous4, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous4, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous4, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous4, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @fifo_10_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous4, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous4, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous4, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous4, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @fifo_10_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous4, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous4, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous4, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous4, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @fifo_10_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous4, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous4, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous4, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous4, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @fifo_10_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous4, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous4, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous4, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous4, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @fifo_10_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous4, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous4, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous4, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous4, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @fifo_10_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous4, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous4, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous4, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous4, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous5, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @fifo_10_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_0_buff_0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous4, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous4, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous4, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous4, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous4, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous4, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous4, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous4, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous4, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous4, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous4, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous4, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous4, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous4, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous4, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous4, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous4, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous4, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous4, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous4, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous4, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous4, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous4, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous4, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous4, ptr noundef nonnull align 32 dereferenceable(512) @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous4, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous4, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous4, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous4, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @fifo_10_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous4, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous4, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous4, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous4, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous5, align 32
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_3() local_unnamed_addr {
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  br label %1

1:                                                ; preds = %0, %1072
  %2 = phi i64 [ 0, %0 ], [ %1073, %1072 ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous0)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_0_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15

.preheader15:                                     ; preds = %1, %132
  %3 = phi i64 [ 0, %1 ], [ %133, %132 ]
  %4 = shl nuw nsw i64 %3, 5
  br label %5

5:                                                ; preds = %129, %.preheader15
  %6 = phi i64 [ 0, %.preheader15 ], [ %130, %129 ]
  %7 = add nuw nsw i64 %6, %4
  %8 = trunc i64 %7 to i20
  %9 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %8
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 0, %5 ], [ %65, %11 ]
  %13 = phi i32 [ %10, %5 ], [ %64, %11 ]
  %14 = or disjoint i64 %12, %4
  %15 = trunc i64 %14 to i20
  %16 = getelementptr i16, ptr @_anonymous1, i20 %15
  %17 = load i16, ptr %16, align 8
  %18 = shl nuw nsw i64 %12, 5
  %19 = add nuw nsw i64 %18, %6
  %20 = trunc nuw i64 %19 to i20
  %21 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %20
  %22 = load i16, ptr %21, align 4
  %23 = mul i16 %22, %17
  %24 = sext i16 %23 to i32
  %25 = add i32 %13, %24
  %26 = or disjoint i64 %12, 1
  %27 = or disjoint i64 %26, %4
  %28 = trunc i64 %27 to i20
  %29 = getelementptr i16, ptr @_anonymous1, i20 %28
  %30 = load i16, ptr %29, align 2
  %31 = shl nuw nsw i64 %26, 5
  %32 = add nuw nsw i64 %31, %6
  %33 = trunc nuw i64 %32 to i20
  %34 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %33
  %35 = load i16, ptr %34, align 4
  %36 = mul i16 %35, %30
  %37 = sext i16 %36 to i32
  %38 = add i32 %25, %37
  %39 = or disjoint i64 %12, 2
  %40 = or disjoint i64 %39, %4
  %41 = trunc i64 %40 to i20
  %42 = getelementptr i16, ptr @_anonymous1, i20 %41
  %43 = load i16, ptr %42, align 4
  %44 = shl nuw nsw i64 %39, 5
  %45 = add nuw nsw i64 %44, %6
  %46 = trunc nuw i64 %45 to i20
  %47 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %46
  %48 = load i16, ptr %47, align 4
  %49 = mul i16 %48, %43
  %50 = sext i16 %49 to i32
  %51 = add i32 %38, %50
  %52 = or disjoint i64 %12, 3
  %53 = or disjoint i64 %52, %4
  %54 = trunc i64 %53 to i20
  %55 = getelementptr i16, ptr @_anonymous1, i20 %54
  %56 = load i16, ptr %55, align 2
  %57 = shl nuw nsw i64 %52, 5
  %58 = add nuw nsw i64 %57, %6
  %59 = trunc nuw i64 %58 to i20
  %60 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %59
  %61 = load i16, ptr %60, align 4
  %62 = mul i16 %61, %56
  %63 = sext i16 %62 to i32
  %64 = add i32 %51, %63
  %65 = add nuw nsw i64 %12, 4
  %66 = icmp ult i64 %52, 31
  br i1 %66, label %11, label %67

67:                                               ; preds = %11
  store i32 %64, ptr %9, align 8
  %68 = or disjoint i64 %6, 1
  %69 = add nuw nsw i64 %68, %4
  %70 = trunc i64 %69 to i20
  %71 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %67
  %74 = phi i64 [ 0, %67 ], [ %127, %73 ]
  %75 = phi i32 [ %72, %67 ], [ %126, %73 ]
  %76 = or disjoint i64 %74, %4
  %77 = trunc i64 %76 to i20
  %78 = getelementptr i16, ptr @_anonymous1, i20 %77
  %79 = load i16, ptr %78, align 8
  %80 = shl nuw nsw i64 %74, 5
  %81 = add nuw nsw i64 %80, %68
  %82 = trunc nuw i64 %81 to i20
  %83 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %82
  %84 = load i16, ptr %83, align 2
  %85 = mul i16 %84, %79
  %86 = sext i16 %85 to i32
  %87 = add i32 %75, %86
  %88 = or disjoint i64 %74, 1
  %89 = or disjoint i64 %88, %4
  %90 = trunc i64 %89 to i20
  %91 = getelementptr i16, ptr @_anonymous1, i20 %90
  %92 = load i16, ptr %91, align 2
  %93 = shl nuw nsw i64 %88, 5
  %94 = add nuw nsw i64 %93, %68
  %95 = trunc nuw i64 %94 to i20
  %96 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %95
  %97 = load i16, ptr %96, align 2
  %98 = mul i16 %97, %92
  %99 = sext i16 %98 to i32
  %100 = add i32 %87, %99
  %101 = or disjoint i64 %74, 2
  %102 = or disjoint i64 %101, %4
  %103 = trunc i64 %102 to i20
  %104 = getelementptr i16, ptr @_anonymous1, i20 %103
  %105 = load i16, ptr %104, align 4
  %106 = shl nuw nsw i64 %101, 5
  %107 = add nuw nsw i64 %106, %68
  %108 = trunc nuw i64 %107 to i20
  %109 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %108
  %110 = load i16, ptr %109, align 2
  %111 = mul i16 %110, %105
  %112 = sext i16 %111 to i32
  %113 = add i32 %100, %112
  %114 = or disjoint i64 %74, 3
  %115 = or disjoint i64 %114, %4
  %116 = trunc i64 %115 to i20
  %117 = getelementptr i16, ptr @_anonymous1, i20 %116
  %118 = load i16, ptr %117, align 2
  %119 = shl nuw nsw i64 %114, 5
  %120 = add nuw nsw i64 %119, %68
  %121 = trunc nuw i64 %120 to i20
  %122 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %121
  %123 = load i16, ptr %122, align 2
  %124 = mul i16 %123, %118
  %125 = sext i16 %124 to i32
  %126 = add i32 %113, %125
  %127 = add nuw nsw i64 %74, 4
  %128 = icmp ult i64 %114, 31
  br i1 %128, label %73, label %129

129:                                              ; preds = %73
  store i32 %126, ptr %71, align 4
  %130 = add nuw nsw i64 %6, 2
  %131 = icmp ult i64 %68, 31
  br i1 %131, label %5, label %132

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %3, 1
  %134 = icmp ult i64 %3, 7
  br i1 %134, label %.preheader15, label %135

135:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.1

.preheader15.1:                                   ; preds = %266, %135
  %136 = phi i64 [ 0, %135 ], [ %267, %266 ]
  %137 = shl nuw nsw i64 %136, 5
  %138 = add nuw nsw i64 %137, 256
  br label %139

139:                                              ; preds = %263, %.preheader15.1
  %140 = phi i64 [ 0, %.preheader15.1 ], [ %264, %263 ]
  %141 = add nuw nsw i64 %140, %138
  %142 = trunc i64 %141 to i20
  %143 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %142
  %144 = load i32, ptr %143, align 8
  br label %145

145:                                              ; preds = %145, %139
  %146 = phi i64 [ 0, %139 ], [ %199, %145 ]
  %147 = phi i32 [ %144, %139 ], [ %198, %145 ]
  %148 = or disjoint i64 %146, %137
  %149 = trunc i64 %148 to i20
  %150 = getelementptr i16, ptr @_anonymous1, i20 %149
  %151 = load i16, ptr %150, align 8
  %152 = shl nuw nsw i64 %146, 5
  %153 = add nuw nsw i64 %152, %140
  %154 = trunc nuw i64 %153 to i20
  %155 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %154
  %156 = load i16, ptr %155, align 4
  %157 = mul i16 %156, %151
  %158 = sext i16 %157 to i32
  %159 = add i32 %147, %158
  %160 = or disjoint i64 %146, 1
  %161 = or disjoint i64 %160, %137
  %162 = trunc i64 %161 to i20
  %163 = getelementptr i16, ptr @_anonymous1, i20 %162
  %164 = load i16, ptr %163, align 2
  %165 = shl nuw nsw i64 %160, 5
  %166 = add nuw nsw i64 %165, %140
  %167 = trunc nuw i64 %166 to i20
  %168 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %167
  %169 = load i16, ptr %168, align 4
  %170 = mul i16 %169, %164
  %171 = sext i16 %170 to i32
  %172 = add i32 %159, %171
  %173 = or disjoint i64 %146, 2
  %174 = or disjoint i64 %173, %137
  %175 = trunc i64 %174 to i20
  %176 = getelementptr i16, ptr @_anonymous1, i20 %175
  %177 = load i16, ptr %176, align 4
  %178 = shl nuw nsw i64 %173, 5
  %179 = add nuw nsw i64 %178, %140
  %180 = trunc nuw i64 %179 to i20
  %181 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %180
  %182 = load i16, ptr %181, align 4
  %183 = mul i16 %182, %177
  %184 = sext i16 %183 to i32
  %185 = add i32 %172, %184
  %186 = or disjoint i64 %146, 3
  %187 = or disjoint i64 %186, %137
  %188 = trunc i64 %187 to i20
  %189 = getelementptr i16, ptr @_anonymous1, i20 %188
  %190 = load i16, ptr %189, align 2
  %191 = shl nuw nsw i64 %186, 5
  %192 = add nuw nsw i64 %191, %140
  %193 = trunc nuw i64 %192 to i20
  %194 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %193
  %195 = load i16, ptr %194, align 4
  %196 = mul i16 %195, %190
  %197 = sext i16 %196 to i32
  %198 = add i32 %185, %197
  %199 = add nuw nsw i64 %146, 4
  %200 = icmp ult i64 %186, 31
  br i1 %200, label %145, label %201

201:                                              ; preds = %145
  store i32 %198, ptr %143, align 8
  %202 = or disjoint i64 %140, 1
  %203 = add nuw nsw i64 %202, %138
  %204 = trunc i64 %203 to i20
  %205 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %204
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %207, %201
  %208 = phi i64 [ 0, %201 ], [ %261, %207 ]
  %209 = phi i32 [ %206, %201 ], [ %260, %207 ]
  %210 = or disjoint i64 %208, %137
  %211 = trunc i64 %210 to i20
  %212 = getelementptr i16, ptr @_anonymous1, i20 %211
  %213 = load i16, ptr %212, align 8
  %214 = shl nuw nsw i64 %208, 5
  %215 = add nuw nsw i64 %214, %202
  %216 = trunc nuw i64 %215 to i20
  %217 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %216
  %218 = load i16, ptr %217, align 2
  %219 = mul i16 %218, %213
  %220 = sext i16 %219 to i32
  %221 = add i32 %209, %220
  %222 = or disjoint i64 %208, 1
  %223 = or disjoint i64 %222, %137
  %224 = trunc i64 %223 to i20
  %225 = getelementptr i16, ptr @_anonymous1, i20 %224
  %226 = load i16, ptr %225, align 2
  %227 = shl nuw nsw i64 %222, 5
  %228 = add nuw nsw i64 %227, %202
  %229 = trunc nuw i64 %228 to i20
  %230 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %229
  %231 = load i16, ptr %230, align 2
  %232 = mul i16 %231, %226
  %233 = sext i16 %232 to i32
  %234 = add i32 %221, %233
  %235 = or disjoint i64 %208, 2
  %236 = or disjoint i64 %235, %137
  %237 = trunc i64 %236 to i20
  %238 = getelementptr i16, ptr @_anonymous1, i20 %237
  %239 = load i16, ptr %238, align 4
  %240 = shl nuw nsw i64 %235, 5
  %241 = add nuw nsw i64 %240, %202
  %242 = trunc nuw i64 %241 to i20
  %243 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %242
  %244 = load i16, ptr %243, align 2
  %245 = mul i16 %244, %239
  %246 = sext i16 %245 to i32
  %247 = add i32 %234, %246
  %248 = or disjoint i64 %208, 3
  %249 = or disjoint i64 %248, %137
  %250 = trunc i64 %249 to i20
  %251 = getelementptr i16, ptr @_anonymous1, i20 %250
  %252 = load i16, ptr %251, align 2
  %253 = shl nuw nsw i64 %248, 5
  %254 = add nuw nsw i64 %253, %202
  %255 = trunc nuw i64 %254 to i20
  %256 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %255
  %257 = load i16, ptr %256, align 2
  %258 = mul i16 %257, %252
  %259 = sext i16 %258 to i32
  %260 = add i32 %247, %259
  %261 = add nuw nsw i64 %208, 4
  %262 = icmp ult i64 %248, 31
  br i1 %262, label %207, label %263

263:                                              ; preds = %207
  store i32 %260, ptr %205, align 4
  %264 = add nuw nsw i64 %140, 2
  %265 = icmp ult i64 %202, 31
  br i1 %265, label %139, label %266

266:                                              ; preds = %263
  %267 = add nuw nsw i64 %136, 1
  %268 = icmp ult i64 %136, 7
  br i1 %268, label %.preheader15.1, label %269

269:                                              ; preds = %266
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.2

.preheader15.2:                                   ; preds = %400, %269
  %270 = phi i64 [ 0, %269 ], [ %401, %400 ]
  %271 = shl nuw nsw i64 %270, 5
  %272 = add nuw nsw i64 %271, 512
  br label %273

273:                                              ; preds = %397, %.preheader15.2
  %274 = phi i64 [ 0, %.preheader15.2 ], [ %398, %397 ]
  %275 = add nuw nsw i64 %274, %272
  %276 = trunc i64 %275 to i20
  %277 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %276
  %278 = load i32, ptr %277, align 8
  br label %279

279:                                              ; preds = %279, %273
  %280 = phi i64 [ 0, %273 ], [ %333, %279 ]
  %281 = phi i32 [ %278, %273 ], [ %332, %279 ]
  %282 = or disjoint i64 %280, %271
  %283 = trunc i64 %282 to i20
  %284 = getelementptr i16, ptr @_anonymous1, i20 %283
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i64 %280, 5
  %287 = add nuw nsw i64 %286, %274
  %288 = trunc nuw i64 %287 to i20
  %289 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %288
  %290 = load i16, ptr %289, align 4
  %291 = mul i16 %290, %285
  %292 = sext i16 %291 to i32
  %293 = add i32 %281, %292
  %294 = or disjoint i64 %280, 1
  %295 = or disjoint i64 %294, %271
  %296 = trunc i64 %295 to i20
  %297 = getelementptr i16, ptr @_anonymous1, i20 %296
  %298 = load i16, ptr %297, align 2
  %299 = shl nuw nsw i64 %294, 5
  %300 = add nuw nsw i64 %299, %274
  %301 = trunc nuw i64 %300 to i20
  %302 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %301
  %303 = load i16, ptr %302, align 4
  %304 = mul i16 %303, %298
  %305 = sext i16 %304 to i32
  %306 = add i32 %293, %305
  %307 = or disjoint i64 %280, 2
  %308 = or disjoint i64 %307, %271
  %309 = trunc i64 %308 to i20
  %310 = getelementptr i16, ptr @_anonymous1, i20 %309
  %311 = load i16, ptr %310, align 4
  %312 = shl nuw nsw i64 %307, 5
  %313 = add nuw nsw i64 %312, %274
  %314 = trunc nuw i64 %313 to i20
  %315 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %314
  %316 = load i16, ptr %315, align 4
  %317 = mul i16 %316, %311
  %318 = sext i16 %317 to i32
  %319 = add i32 %306, %318
  %320 = or disjoint i64 %280, 3
  %321 = or disjoint i64 %320, %271
  %322 = trunc i64 %321 to i20
  %323 = getelementptr i16, ptr @_anonymous1, i20 %322
  %324 = load i16, ptr %323, align 2
  %325 = shl nuw nsw i64 %320, 5
  %326 = add nuw nsw i64 %325, %274
  %327 = trunc nuw i64 %326 to i20
  %328 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %327
  %329 = load i16, ptr %328, align 4
  %330 = mul i16 %329, %324
  %331 = sext i16 %330 to i32
  %332 = add i32 %319, %331
  %333 = add nuw nsw i64 %280, 4
  %334 = icmp ult i64 %320, 31
  br i1 %334, label %279, label %335

335:                                              ; preds = %279
  store i32 %332, ptr %277, align 8
  %336 = or disjoint i64 %274, 1
  %337 = add nuw nsw i64 %336, %272
  %338 = trunc i64 %337 to i20
  %339 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %338
  %340 = load i32, ptr %339, align 4
  br label %341

341:                                              ; preds = %341, %335
  %342 = phi i64 [ 0, %335 ], [ %395, %341 ]
  %343 = phi i32 [ %340, %335 ], [ %394, %341 ]
  %344 = or disjoint i64 %342, %271
  %345 = trunc i64 %344 to i20
  %346 = getelementptr i16, ptr @_anonymous1, i20 %345
  %347 = load i16, ptr %346, align 8
  %348 = shl nuw nsw i64 %342, 5
  %349 = add nuw nsw i64 %348, %336
  %350 = trunc nuw i64 %349 to i20
  %351 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %350
  %352 = load i16, ptr %351, align 2
  %353 = mul i16 %352, %347
  %354 = sext i16 %353 to i32
  %355 = add i32 %343, %354
  %356 = or disjoint i64 %342, 1
  %357 = or disjoint i64 %356, %271
  %358 = trunc i64 %357 to i20
  %359 = getelementptr i16, ptr @_anonymous1, i20 %358
  %360 = load i16, ptr %359, align 2
  %361 = shl nuw nsw i64 %356, 5
  %362 = add nuw nsw i64 %361, %336
  %363 = trunc nuw i64 %362 to i20
  %364 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %363
  %365 = load i16, ptr %364, align 2
  %366 = mul i16 %365, %360
  %367 = sext i16 %366 to i32
  %368 = add i32 %355, %367
  %369 = or disjoint i64 %342, 2
  %370 = or disjoint i64 %369, %271
  %371 = trunc i64 %370 to i20
  %372 = getelementptr i16, ptr @_anonymous1, i20 %371
  %373 = load i16, ptr %372, align 4
  %374 = shl nuw nsw i64 %369, 5
  %375 = add nuw nsw i64 %374, %336
  %376 = trunc nuw i64 %375 to i20
  %377 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %376
  %378 = load i16, ptr %377, align 2
  %379 = mul i16 %378, %373
  %380 = sext i16 %379 to i32
  %381 = add i32 %368, %380
  %382 = or disjoint i64 %342, 3
  %383 = or disjoint i64 %382, %271
  %384 = trunc i64 %383 to i20
  %385 = getelementptr i16, ptr @_anonymous1, i20 %384
  %386 = load i16, ptr %385, align 2
  %387 = shl nuw nsw i64 %382, 5
  %388 = add nuw nsw i64 %387, %336
  %389 = trunc nuw i64 %388 to i20
  %390 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %389
  %391 = load i16, ptr %390, align 2
  %392 = mul i16 %391, %386
  %393 = sext i16 %392 to i32
  %394 = add i32 %381, %393
  %395 = add nuw nsw i64 %342, 4
  %396 = icmp ult i64 %382, 31
  br i1 %396, label %341, label %397

397:                                              ; preds = %341
  store i32 %394, ptr %339, align 4
  %398 = add nuw nsw i64 %274, 2
  %399 = icmp ult i64 %336, 31
  br i1 %399, label %273, label %400

400:                                              ; preds = %397
  %401 = add nuw nsw i64 %270, 1
  %402 = icmp ult i64 %270, 7
  br i1 %402, label %.preheader15.2, label %403

403:                                              ; preds = %400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader15.3

.preheader15.3:                                   ; preds = %534, %403
  %404 = phi i64 [ 0, %403 ], [ %535, %534 ]
  %405 = shl nuw nsw i64 %404, 5
  %406 = add nuw nsw i64 %405, 768
  br label %407

407:                                              ; preds = %531, %.preheader15.3
  %408 = phi i64 [ 0, %.preheader15.3 ], [ %532, %531 ]
  %409 = add nuw nsw i64 %408, %406
  %410 = trunc i64 %409 to i20
  %411 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %410
  %412 = load i32, ptr %411, align 8
  br label %413

413:                                              ; preds = %413, %407
  %414 = phi i64 [ 0, %407 ], [ %467, %413 ]
  %415 = phi i32 [ %412, %407 ], [ %466, %413 ]
  %416 = or disjoint i64 %414, %405
  %417 = trunc i64 %416 to i20
  %418 = getelementptr i16, ptr @_anonymous1, i20 %417
  %419 = load i16, ptr %418, align 8
  %420 = shl nuw nsw i64 %414, 5
  %421 = add nuw nsw i64 %420, %408
  %422 = trunc nuw i64 %421 to i20
  %423 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %422
  %424 = load i16, ptr %423, align 4
  %425 = mul i16 %424, %419
  %426 = sext i16 %425 to i32
  %427 = add i32 %415, %426
  %428 = or disjoint i64 %414, 1
  %429 = or disjoint i64 %428, %405
  %430 = trunc i64 %429 to i20
  %431 = getelementptr i16, ptr @_anonymous1, i20 %430
  %432 = load i16, ptr %431, align 2
  %433 = shl nuw nsw i64 %428, 5
  %434 = add nuw nsw i64 %433, %408
  %435 = trunc nuw i64 %434 to i20
  %436 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %435
  %437 = load i16, ptr %436, align 4
  %438 = mul i16 %437, %432
  %439 = sext i16 %438 to i32
  %440 = add i32 %427, %439
  %441 = or disjoint i64 %414, 2
  %442 = or disjoint i64 %441, %405
  %443 = trunc i64 %442 to i20
  %444 = getelementptr i16, ptr @_anonymous1, i20 %443
  %445 = load i16, ptr %444, align 4
  %446 = shl nuw nsw i64 %441, 5
  %447 = add nuw nsw i64 %446, %408
  %448 = trunc nuw i64 %447 to i20
  %449 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %448
  %450 = load i16, ptr %449, align 4
  %451 = mul i16 %450, %445
  %452 = sext i16 %451 to i32
  %453 = add i32 %440, %452
  %454 = or disjoint i64 %414, 3
  %455 = or disjoint i64 %454, %405
  %456 = trunc i64 %455 to i20
  %457 = getelementptr i16, ptr @_anonymous1, i20 %456
  %458 = load i16, ptr %457, align 2
  %459 = shl nuw nsw i64 %454, 5
  %460 = add nuw nsw i64 %459, %408
  %461 = trunc nuw i64 %460 to i20
  %462 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %461
  %463 = load i16, ptr %462, align 4
  %464 = mul i16 %463, %458
  %465 = sext i16 %464 to i32
  %466 = add i32 %453, %465
  %467 = add nuw nsw i64 %414, 4
  %468 = icmp ult i64 %454, 31
  br i1 %468, label %413, label %469

469:                                              ; preds = %413
  store i32 %466, ptr %411, align 8
  %470 = or disjoint i64 %408, 1
  %471 = add nuw nsw i64 %470, %406
  %472 = trunc i64 %471 to i20
  %473 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %472
  %474 = load i32, ptr %473, align 4
  br label %475

475:                                              ; preds = %475, %469
  %476 = phi i64 [ 0, %469 ], [ %529, %475 ]
  %477 = phi i32 [ %474, %469 ], [ %528, %475 ]
  %478 = or disjoint i64 %476, %405
  %479 = trunc i64 %478 to i20
  %480 = getelementptr i16, ptr @_anonymous1, i20 %479
  %481 = load i16, ptr %480, align 8
  %482 = shl nuw nsw i64 %476, 5
  %483 = add nuw nsw i64 %482, %470
  %484 = trunc nuw i64 %483 to i20
  %485 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %484
  %486 = load i16, ptr %485, align 2
  %487 = mul i16 %486, %481
  %488 = sext i16 %487 to i32
  %489 = add i32 %477, %488
  %490 = or disjoint i64 %476, 1
  %491 = or disjoint i64 %490, %405
  %492 = trunc i64 %491 to i20
  %493 = getelementptr i16, ptr @_anonymous1, i20 %492
  %494 = load i16, ptr %493, align 2
  %495 = shl nuw nsw i64 %490, 5
  %496 = add nuw nsw i64 %495, %470
  %497 = trunc nuw i64 %496 to i20
  %498 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %497
  %499 = load i16, ptr %498, align 2
  %500 = mul i16 %499, %494
  %501 = sext i16 %500 to i32
  %502 = add i32 %489, %501
  %503 = or disjoint i64 %476, 2
  %504 = or disjoint i64 %503, %405
  %505 = trunc i64 %504 to i20
  %506 = getelementptr i16, ptr @_anonymous1, i20 %505
  %507 = load i16, ptr %506, align 4
  %508 = shl nuw nsw i64 %503, 5
  %509 = add nuw nsw i64 %508, %470
  %510 = trunc nuw i64 %509 to i20
  %511 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %510
  %512 = load i16, ptr %511, align 2
  %513 = mul i16 %512, %507
  %514 = sext i16 %513 to i32
  %515 = add i32 %502, %514
  %516 = or disjoint i64 %476, 3
  %517 = or disjoint i64 %516, %405
  %518 = trunc i64 %517 to i20
  %519 = getelementptr i16, ptr @_anonymous1, i20 %518
  %520 = load i16, ptr %519, align 2
  %521 = shl nuw nsw i64 %516, 5
  %522 = add nuw nsw i64 %521, %470
  %523 = trunc nuw i64 %522 to i20
  %524 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %523
  %525 = load i16, ptr %524, align 2
  %526 = mul i16 %525, %520
  %527 = sext i16 %526 to i32
  %528 = add i32 %515, %527
  %529 = add nuw nsw i64 %476, 4
  %530 = icmp ult i64 %516, 31
  br i1 %530, label %475, label %531

531:                                              ; preds = %475
  store i32 %528, ptr %473, align 4
  %532 = add nuw nsw i64 %408, 2
  %533 = icmp ult i64 %470, 31
  br i1 %533, label %407, label %534

534:                                              ; preds = %531
  %535 = add nuw nsw i64 %404, 1
  %536 = icmp ult i64 %404, 7
  br i1 %536, label %.preheader15.3, label %537

537:                                              ; preds = %534
  store i32 %528, ptr @_anonymous2, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous0)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_0_buff_1, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14

.preheader14:                                     ; preds = %537, %667
  %538 = phi i64 [ 0, %537 ], [ %668, %667 ]
  %539 = shl nuw nsw i64 %538, 5
  br label %540

540:                                              ; preds = %664, %.preheader14
  %541 = phi i64 [ 0, %.preheader14 ], [ %665, %664 ]
  %542 = add nuw nsw i64 %541, %539
  %543 = trunc i64 %542 to i20
  %544 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %543
  %545 = load i32, ptr %544, align 8
  br label %546

546:                                              ; preds = %546, %540
  %547 = phi i64 [ 0, %540 ], [ %600, %546 ]
  %548 = phi i32 [ %545, %540 ], [ %599, %546 ]
  %549 = or disjoint i64 %547, %539
  %550 = trunc i64 %549 to i20
  %551 = getelementptr i16, ptr @_anonymous1, i20 %550
  %552 = load i16, ptr %551, align 8
  %553 = shl nuw nsw i64 %547, 5
  %554 = add nuw nsw i64 %553, %541
  %555 = trunc nuw i64 %554 to i20
  %556 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %555
  %557 = load i16, ptr %556, align 4
  %558 = mul i16 %557, %552
  %559 = sext i16 %558 to i32
  %560 = add i32 %548, %559
  %561 = or disjoint i64 %547, 1
  %562 = or disjoint i64 %561, %539
  %563 = trunc i64 %562 to i20
  %564 = getelementptr i16, ptr @_anonymous1, i20 %563
  %565 = load i16, ptr %564, align 2
  %566 = shl nuw nsw i64 %561, 5
  %567 = add nuw nsw i64 %566, %541
  %568 = trunc nuw i64 %567 to i20
  %569 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %568
  %570 = load i16, ptr %569, align 4
  %571 = mul i16 %570, %565
  %572 = sext i16 %571 to i32
  %573 = add i32 %560, %572
  %574 = or disjoint i64 %547, 2
  %575 = or disjoint i64 %574, %539
  %576 = trunc i64 %575 to i20
  %577 = getelementptr i16, ptr @_anonymous1, i20 %576
  %578 = load i16, ptr %577, align 4
  %579 = shl nuw nsw i64 %574, 5
  %580 = add nuw nsw i64 %579, %541
  %581 = trunc nuw i64 %580 to i20
  %582 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %581
  %583 = load i16, ptr %582, align 4
  %584 = mul i16 %583, %578
  %585 = sext i16 %584 to i32
  %586 = add i32 %573, %585
  %587 = or disjoint i64 %547, 3
  %588 = or disjoint i64 %587, %539
  %589 = trunc i64 %588 to i20
  %590 = getelementptr i16, ptr @_anonymous1, i20 %589
  %591 = load i16, ptr %590, align 2
  %592 = shl nuw nsw i64 %587, 5
  %593 = add nuw nsw i64 %592, %541
  %594 = trunc nuw i64 %593 to i20
  %595 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %594
  %596 = load i16, ptr %595, align 4
  %597 = mul i16 %596, %591
  %598 = sext i16 %597 to i32
  %599 = add i32 %586, %598
  %600 = add nuw nsw i64 %547, 4
  %601 = icmp ult i64 %587, 31
  br i1 %601, label %546, label %602

602:                                              ; preds = %546
  store i32 %599, ptr %544, align 8
  %603 = or disjoint i64 %541, 1
  %604 = add nuw nsw i64 %603, %539
  %605 = trunc i64 %604 to i20
  %606 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %605
  %607 = load i32, ptr %606, align 4
  br label %608

608:                                              ; preds = %608, %602
  %609 = phi i64 [ 0, %602 ], [ %662, %608 ]
  %610 = phi i32 [ %607, %602 ], [ %661, %608 ]
  %611 = or disjoint i64 %609, %539
  %612 = trunc i64 %611 to i20
  %613 = getelementptr i16, ptr @_anonymous1, i20 %612
  %614 = load i16, ptr %613, align 8
  %615 = shl nuw nsw i64 %609, 5
  %616 = add nuw nsw i64 %615, %603
  %617 = trunc nuw i64 %616 to i20
  %618 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %617
  %619 = load i16, ptr %618, align 2
  %620 = mul i16 %619, %614
  %621 = sext i16 %620 to i32
  %622 = add i32 %610, %621
  %623 = or disjoint i64 %609, 1
  %624 = or disjoint i64 %623, %539
  %625 = trunc i64 %624 to i20
  %626 = getelementptr i16, ptr @_anonymous1, i20 %625
  %627 = load i16, ptr %626, align 2
  %628 = shl nuw nsw i64 %623, 5
  %629 = add nuw nsw i64 %628, %603
  %630 = trunc nuw i64 %629 to i20
  %631 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %630
  %632 = load i16, ptr %631, align 2
  %633 = mul i16 %632, %627
  %634 = sext i16 %633 to i32
  %635 = add i32 %622, %634
  %636 = or disjoint i64 %609, 2
  %637 = or disjoint i64 %636, %539
  %638 = trunc i64 %637 to i20
  %639 = getelementptr i16, ptr @_anonymous1, i20 %638
  %640 = load i16, ptr %639, align 4
  %641 = shl nuw nsw i64 %636, 5
  %642 = add nuw nsw i64 %641, %603
  %643 = trunc nuw i64 %642 to i20
  %644 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %643
  %645 = load i16, ptr %644, align 2
  %646 = mul i16 %645, %640
  %647 = sext i16 %646 to i32
  %648 = add i32 %635, %647
  %649 = or disjoint i64 %609, 3
  %650 = or disjoint i64 %649, %539
  %651 = trunc i64 %650 to i20
  %652 = getelementptr i16, ptr @_anonymous1, i20 %651
  %653 = load i16, ptr %652, align 2
  %654 = shl nuw nsw i64 %649, 5
  %655 = add nuw nsw i64 %654, %603
  %656 = trunc nuw i64 %655 to i20
  %657 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %656
  %658 = load i16, ptr %657, align 2
  %659 = mul i16 %658, %653
  %660 = sext i16 %659 to i32
  %661 = add i32 %648, %660
  %662 = add nuw nsw i64 %609, 4
  %663 = icmp ult i64 %649, 31
  br i1 %663, label %608, label %664

664:                                              ; preds = %608
  store i32 %661, ptr %606, align 4
  %665 = add nuw nsw i64 %541, 2
  %666 = icmp ult i64 %603, 31
  br i1 %666, label %540, label %667

667:                                              ; preds = %664
  %668 = add nuw nsw i64 %538, 1
  %669 = icmp ult i64 %538, 7
  br i1 %669, label %.preheader14, label %670

670:                                              ; preds = %667
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.1

.preheader14.1:                                   ; preds = %801, %670
  %671 = phi i64 [ 0, %670 ], [ %802, %801 ]
  %672 = shl nuw nsw i64 %671, 5
  %673 = add nuw nsw i64 %672, 256
  br label %674

674:                                              ; preds = %798, %.preheader14.1
  %675 = phi i64 [ 0, %.preheader14.1 ], [ %799, %798 ]
  %676 = add nuw nsw i64 %675, %673
  %677 = trunc i64 %676 to i20
  %678 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %677
  %679 = load i32, ptr %678, align 8
  br label %680

680:                                              ; preds = %680, %674
  %681 = phi i64 [ 0, %674 ], [ %734, %680 ]
  %682 = phi i32 [ %679, %674 ], [ %733, %680 ]
  %683 = or disjoint i64 %681, %672
  %684 = trunc i64 %683 to i20
  %685 = getelementptr i16, ptr @_anonymous1, i20 %684
  %686 = load i16, ptr %685, align 8
  %687 = shl nuw nsw i64 %681, 5
  %688 = add nuw nsw i64 %687, %675
  %689 = trunc nuw i64 %688 to i20
  %690 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %689
  %691 = load i16, ptr %690, align 4
  %692 = mul i16 %691, %686
  %693 = sext i16 %692 to i32
  %694 = add i32 %682, %693
  %695 = or disjoint i64 %681, 1
  %696 = or disjoint i64 %695, %672
  %697 = trunc i64 %696 to i20
  %698 = getelementptr i16, ptr @_anonymous1, i20 %697
  %699 = load i16, ptr %698, align 2
  %700 = shl nuw nsw i64 %695, 5
  %701 = add nuw nsw i64 %700, %675
  %702 = trunc nuw i64 %701 to i20
  %703 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %702
  %704 = load i16, ptr %703, align 4
  %705 = mul i16 %704, %699
  %706 = sext i16 %705 to i32
  %707 = add i32 %694, %706
  %708 = or disjoint i64 %681, 2
  %709 = or disjoint i64 %708, %672
  %710 = trunc i64 %709 to i20
  %711 = getelementptr i16, ptr @_anonymous1, i20 %710
  %712 = load i16, ptr %711, align 4
  %713 = shl nuw nsw i64 %708, 5
  %714 = add nuw nsw i64 %713, %675
  %715 = trunc nuw i64 %714 to i20
  %716 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %715
  %717 = load i16, ptr %716, align 4
  %718 = mul i16 %717, %712
  %719 = sext i16 %718 to i32
  %720 = add i32 %707, %719
  %721 = or disjoint i64 %681, 3
  %722 = or disjoint i64 %721, %672
  %723 = trunc i64 %722 to i20
  %724 = getelementptr i16, ptr @_anonymous1, i20 %723
  %725 = load i16, ptr %724, align 2
  %726 = shl nuw nsw i64 %721, 5
  %727 = add nuw nsw i64 %726, %675
  %728 = trunc nuw i64 %727 to i20
  %729 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %728
  %730 = load i16, ptr %729, align 4
  %731 = mul i16 %730, %725
  %732 = sext i16 %731 to i32
  %733 = add i32 %720, %732
  %734 = add nuw nsw i64 %681, 4
  %735 = icmp ult i64 %721, 31
  br i1 %735, label %680, label %736

736:                                              ; preds = %680
  store i32 %733, ptr %678, align 8
  %737 = or disjoint i64 %675, 1
  %738 = add nuw nsw i64 %737, %673
  %739 = trunc i64 %738 to i20
  %740 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %739
  %741 = load i32, ptr %740, align 4
  br label %742

742:                                              ; preds = %742, %736
  %743 = phi i64 [ 0, %736 ], [ %796, %742 ]
  %744 = phi i32 [ %741, %736 ], [ %795, %742 ]
  %745 = or disjoint i64 %743, %672
  %746 = trunc i64 %745 to i20
  %747 = getelementptr i16, ptr @_anonymous1, i20 %746
  %748 = load i16, ptr %747, align 8
  %749 = shl nuw nsw i64 %743, 5
  %750 = add nuw nsw i64 %749, %737
  %751 = trunc nuw i64 %750 to i20
  %752 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %751
  %753 = load i16, ptr %752, align 2
  %754 = mul i16 %753, %748
  %755 = sext i16 %754 to i32
  %756 = add i32 %744, %755
  %757 = or disjoint i64 %743, 1
  %758 = or disjoint i64 %757, %672
  %759 = trunc i64 %758 to i20
  %760 = getelementptr i16, ptr @_anonymous1, i20 %759
  %761 = load i16, ptr %760, align 2
  %762 = shl nuw nsw i64 %757, 5
  %763 = add nuw nsw i64 %762, %737
  %764 = trunc nuw i64 %763 to i20
  %765 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %764
  %766 = load i16, ptr %765, align 2
  %767 = mul i16 %766, %761
  %768 = sext i16 %767 to i32
  %769 = add i32 %756, %768
  %770 = or disjoint i64 %743, 2
  %771 = or disjoint i64 %770, %672
  %772 = trunc i64 %771 to i20
  %773 = getelementptr i16, ptr @_anonymous1, i20 %772
  %774 = load i16, ptr %773, align 4
  %775 = shl nuw nsw i64 %770, 5
  %776 = add nuw nsw i64 %775, %737
  %777 = trunc nuw i64 %776 to i20
  %778 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %777
  %779 = load i16, ptr %778, align 2
  %780 = mul i16 %779, %774
  %781 = sext i16 %780 to i32
  %782 = add i32 %769, %781
  %783 = or disjoint i64 %743, 3
  %784 = or disjoint i64 %783, %672
  %785 = trunc i64 %784 to i20
  %786 = getelementptr i16, ptr @_anonymous1, i20 %785
  %787 = load i16, ptr %786, align 2
  %788 = shl nuw nsw i64 %783, 5
  %789 = add nuw nsw i64 %788, %737
  %790 = trunc nuw i64 %789 to i20
  %791 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %790
  %792 = load i16, ptr %791, align 2
  %793 = mul i16 %792, %787
  %794 = sext i16 %793 to i32
  %795 = add i32 %782, %794
  %796 = add nuw nsw i64 %743, 4
  %797 = icmp ult i64 %783, 31
  br i1 %797, label %742, label %798

798:                                              ; preds = %742
  store i32 %795, ptr %740, align 4
  %799 = add nuw nsw i64 %675, 2
  %800 = icmp ult i64 %737, 31
  br i1 %800, label %674, label %801

801:                                              ; preds = %798
  %802 = add nuw nsw i64 %671, 1
  %803 = icmp ult i64 %671, 7
  br i1 %803, label %.preheader14.1, label %804

804:                                              ; preds = %801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.2

.preheader14.2:                                   ; preds = %935, %804
  %805 = phi i64 [ 0, %804 ], [ %936, %935 ]
  %806 = shl nuw nsw i64 %805, 5
  %807 = add nuw nsw i64 %806, 512
  br label %808

808:                                              ; preds = %932, %.preheader14.2
  %809 = phi i64 [ 0, %.preheader14.2 ], [ %933, %932 ]
  %810 = add nuw nsw i64 %809, %807
  %811 = trunc i64 %810 to i20
  %812 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %811
  %813 = load i32, ptr %812, align 8
  br label %814

814:                                              ; preds = %814, %808
  %815 = phi i64 [ 0, %808 ], [ %868, %814 ]
  %816 = phi i32 [ %813, %808 ], [ %867, %814 ]
  %817 = or disjoint i64 %815, %806
  %818 = trunc i64 %817 to i20
  %819 = getelementptr i16, ptr @_anonymous1, i20 %818
  %820 = load i16, ptr %819, align 8
  %821 = shl nuw nsw i64 %815, 5
  %822 = add nuw nsw i64 %821, %809
  %823 = trunc nuw i64 %822 to i20
  %824 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %823
  %825 = load i16, ptr %824, align 4
  %826 = mul i16 %825, %820
  %827 = sext i16 %826 to i32
  %828 = add i32 %816, %827
  %829 = or disjoint i64 %815, 1
  %830 = or disjoint i64 %829, %806
  %831 = trunc i64 %830 to i20
  %832 = getelementptr i16, ptr @_anonymous1, i20 %831
  %833 = load i16, ptr %832, align 2
  %834 = shl nuw nsw i64 %829, 5
  %835 = add nuw nsw i64 %834, %809
  %836 = trunc nuw i64 %835 to i20
  %837 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %836
  %838 = load i16, ptr %837, align 4
  %839 = mul i16 %838, %833
  %840 = sext i16 %839 to i32
  %841 = add i32 %828, %840
  %842 = or disjoint i64 %815, 2
  %843 = or disjoint i64 %842, %806
  %844 = trunc i64 %843 to i20
  %845 = getelementptr i16, ptr @_anonymous1, i20 %844
  %846 = load i16, ptr %845, align 4
  %847 = shl nuw nsw i64 %842, 5
  %848 = add nuw nsw i64 %847, %809
  %849 = trunc nuw i64 %848 to i20
  %850 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %849
  %851 = load i16, ptr %850, align 4
  %852 = mul i16 %851, %846
  %853 = sext i16 %852 to i32
  %854 = add i32 %841, %853
  %855 = or disjoint i64 %815, 3
  %856 = or disjoint i64 %855, %806
  %857 = trunc i64 %856 to i20
  %858 = getelementptr i16, ptr @_anonymous1, i20 %857
  %859 = load i16, ptr %858, align 2
  %860 = shl nuw nsw i64 %855, 5
  %861 = add nuw nsw i64 %860, %809
  %862 = trunc nuw i64 %861 to i20
  %863 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %862
  %864 = load i16, ptr %863, align 4
  %865 = mul i16 %864, %859
  %866 = sext i16 %865 to i32
  %867 = add i32 %854, %866
  %868 = add nuw nsw i64 %815, 4
  %869 = icmp ult i64 %855, 31
  br i1 %869, label %814, label %870

870:                                              ; preds = %814
  store i32 %867, ptr %812, align 8
  %871 = or disjoint i64 %809, 1
  %872 = add nuw nsw i64 %871, %807
  %873 = trunc i64 %872 to i20
  %874 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %873
  %875 = load i32, ptr %874, align 4
  br label %876

876:                                              ; preds = %876, %870
  %877 = phi i64 [ 0, %870 ], [ %930, %876 ]
  %878 = phi i32 [ %875, %870 ], [ %929, %876 ]
  %879 = or disjoint i64 %877, %806
  %880 = trunc i64 %879 to i20
  %881 = getelementptr i16, ptr @_anonymous1, i20 %880
  %882 = load i16, ptr %881, align 8
  %883 = shl nuw nsw i64 %877, 5
  %884 = add nuw nsw i64 %883, %871
  %885 = trunc nuw i64 %884 to i20
  %886 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %885
  %887 = load i16, ptr %886, align 2
  %888 = mul i16 %887, %882
  %889 = sext i16 %888 to i32
  %890 = add i32 %878, %889
  %891 = or disjoint i64 %877, 1
  %892 = or disjoint i64 %891, %806
  %893 = trunc i64 %892 to i20
  %894 = getelementptr i16, ptr @_anonymous1, i20 %893
  %895 = load i16, ptr %894, align 2
  %896 = shl nuw nsw i64 %891, 5
  %897 = add nuw nsw i64 %896, %871
  %898 = trunc nuw i64 %897 to i20
  %899 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %898
  %900 = load i16, ptr %899, align 2
  %901 = mul i16 %900, %895
  %902 = sext i16 %901 to i32
  %903 = add i32 %890, %902
  %904 = or disjoint i64 %877, 2
  %905 = or disjoint i64 %904, %806
  %906 = trunc i64 %905 to i20
  %907 = getelementptr i16, ptr @_anonymous1, i20 %906
  %908 = load i16, ptr %907, align 4
  %909 = shl nuw nsw i64 %904, 5
  %910 = add nuw nsw i64 %909, %871
  %911 = trunc nuw i64 %910 to i20
  %912 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %911
  %913 = load i16, ptr %912, align 2
  %914 = mul i16 %913, %908
  %915 = sext i16 %914 to i32
  %916 = add i32 %903, %915
  %917 = or disjoint i64 %877, 3
  %918 = or disjoint i64 %917, %806
  %919 = trunc i64 %918 to i20
  %920 = getelementptr i16, ptr @_anonymous1, i20 %919
  %921 = load i16, ptr %920, align 2
  %922 = shl nuw nsw i64 %917, 5
  %923 = add nuw nsw i64 %922, %871
  %924 = trunc nuw i64 %923 to i20
  %925 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %924
  %926 = load i16, ptr %925, align 2
  %927 = mul i16 %926, %921
  %928 = sext i16 %927 to i32
  %929 = add i32 %916, %928
  %930 = add nuw nsw i64 %877, 4
  %931 = icmp ult i64 %917, 31
  br i1 %931, label %876, label %932

932:                                              ; preds = %876
  store i32 %929, ptr %874, align 4
  %933 = add nuw nsw i64 %809, 2
  %934 = icmp ult i64 %871, 31
  br i1 %934, label %808, label %935

935:                                              ; preds = %932
  %936 = add nuw nsw i64 %805, 1
  %937 = icmp ult i64 %805, 7
  br i1 %937, label %.preheader14.2, label %938

938:                                              ; preds = %935
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_1, i64 512, i1 false)
  br label %.preheader14.3

.preheader14.3:                                   ; preds = %1069, %938
  %939 = phi i64 [ 0, %938 ], [ %1070, %1069 ]
  %940 = shl nuw nsw i64 %939, 5
  %941 = add nuw nsw i64 %940, 768
  br label %942

942:                                              ; preds = %1066, %.preheader14.3
  %943 = phi i64 [ 0, %.preheader14.3 ], [ %1067, %1066 ]
  %944 = add nuw nsw i64 %943, %941
  %945 = trunc i64 %944 to i20
  %946 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %945
  %947 = load i32, ptr %946, align 8
  br label %948

948:                                              ; preds = %948, %942
  %949 = phi i64 [ 0, %942 ], [ %1002, %948 ]
  %950 = phi i32 [ %947, %942 ], [ %1001, %948 ]
  %951 = or disjoint i64 %949, %940
  %952 = trunc i64 %951 to i20
  %953 = getelementptr i16, ptr @_anonymous1, i20 %952
  %954 = load i16, ptr %953, align 8
  %955 = shl nuw nsw i64 %949, 5
  %956 = add nuw nsw i64 %955, %943
  %957 = trunc nuw i64 %956 to i20
  %958 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %957
  %959 = load i16, ptr %958, align 4
  %960 = mul i16 %959, %954
  %961 = sext i16 %960 to i32
  %962 = add i32 %950, %961
  %963 = or disjoint i64 %949, 1
  %964 = or disjoint i64 %963, %940
  %965 = trunc i64 %964 to i20
  %966 = getelementptr i16, ptr @_anonymous1, i20 %965
  %967 = load i16, ptr %966, align 2
  %968 = shl nuw nsw i64 %963, 5
  %969 = add nuw nsw i64 %968, %943
  %970 = trunc nuw i64 %969 to i20
  %971 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %970
  %972 = load i16, ptr %971, align 4
  %973 = mul i16 %972, %967
  %974 = sext i16 %973 to i32
  %975 = add i32 %962, %974
  %976 = or disjoint i64 %949, 2
  %977 = or disjoint i64 %976, %940
  %978 = trunc i64 %977 to i20
  %979 = getelementptr i16, ptr @_anonymous1, i20 %978
  %980 = load i16, ptr %979, align 4
  %981 = shl nuw nsw i64 %976, 5
  %982 = add nuw nsw i64 %981, %943
  %983 = trunc nuw i64 %982 to i20
  %984 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %983
  %985 = load i16, ptr %984, align 4
  %986 = mul i16 %985, %980
  %987 = sext i16 %986 to i32
  %988 = add i32 %975, %987
  %989 = or disjoint i64 %949, 3
  %990 = or disjoint i64 %989, %940
  %991 = trunc i64 %990 to i20
  %992 = getelementptr i16, ptr @_anonymous1, i20 %991
  %993 = load i16, ptr %992, align 2
  %994 = shl nuw nsw i64 %989, 5
  %995 = add nuw nsw i64 %994, %943
  %996 = trunc nuw i64 %995 to i20
  %997 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %996
  %998 = load i16, ptr %997, align 4
  %999 = mul i16 %998, %993
  %1000 = sext i16 %999 to i32
  %1001 = add i32 %988, %1000
  %1002 = add nuw nsw i64 %949, 4
  %1003 = icmp ult i64 %989, 31
  br i1 %1003, label %948, label %1004

1004:                                             ; preds = %948
  store i32 %1001, ptr %946, align 8
  %1005 = or disjoint i64 %943, 1
  %1006 = add nuw nsw i64 %1005, %941
  %1007 = trunc i64 %1006 to i20
  %1008 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i20 %1007
  %1009 = load i32, ptr %1008, align 4
  br label %1010

1010:                                             ; preds = %1010, %1004
  %1011 = phi i64 [ 0, %1004 ], [ %1064, %1010 ]
  %1012 = phi i32 [ %1009, %1004 ], [ %1063, %1010 ]
  %1013 = or disjoint i64 %1011, %940
  %1014 = trunc i64 %1013 to i20
  %1015 = getelementptr i16, ptr @_anonymous1, i20 %1014
  %1016 = load i16, ptr %1015, align 8
  %1017 = shl nuw nsw i64 %1011, 5
  %1018 = add nuw nsw i64 %1017, %1005
  %1019 = trunc nuw i64 %1018 to i20
  %1020 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %1019
  %1021 = load i16, ptr %1020, align 2
  %1022 = mul i16 %1021, %1016
  %1023 = sext i16 %1022 to i32
  %1024 = add i32 %1012, %1023
  %1025 = or disjoint i64 %1011, 1
  %1026 = or disjoint i64 %1025, %940
  %1027 = trunc i64 %1026 to i20
  %1028 = getelementptr i16, ptr @_anonymous1, i20 %1027
  %1029 = load i16, ptr %1028, align 2
  %1030 = shl nuw nsw i64 %1025, 5
  %1031 = add nuw nsw i64 %1030, %1005
  %1032 = trunc nuw i64 %1031 to i20
  %1033 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %1032
  %1034 = load i16, ptr %1033, align 2
  %1035 = mul i16 %1034, %1029
  %1036 = sext i16 %1035 to i32
  %1037 = add i32 %1024, %1036
  %1038 = or disjoint i64 %1011, 2
  %1039 = or disjoint i64 %1038, %940
  %1040 = trunc i64 %1039 to i20
  %1041 = getelementptr i16, ptr @_anonymous1, i20 %1040
  %1042 = load i16, ptr %1041, align 4
  %1043 = shl nuw nsw i64 %1038, 5
  %1044 = add nuw nsw i64 %1043, %1005
  %1045 = trunc nuw i64 %1044 to i20
  %1046 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %1045
  %1047 = load i16, ptr %1046, align 2
  %1048 = mul i16 %1047, %1042
  %1049 = sext i16 %1048 to i32
  %1050 = add i32 %1037, %1049
  %1051 = or disjoint i64 %1011, 3
  %1052 = or disjoint i64 %1051, %940
  %1053 = trunc i64 %1052 to i20
  %1054 = getelementptr i16, ptr @_anonymous1, i20 %1053
  %1055 = load i16, ptr %1054, align 2
  %1056 = shl nuw nsw i64 %1051, 5
  %1057 = add nuw nsw i64 %1056, %1005
  %1058 = trunc nuw i64 %1057 to i20
  %1059 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i20 %1058
  %1060 = load i16, ptr %1059, align 2
  %1061 = mul i16 %1060, %1055
  %1062 = sext i16 %1061 to i32
  %1063 = add i32 %1050, %1062
  %1064 = add nuw nsw i64 %1011, 4
  %1065 = icmp ult i64 %1051, 31
  br i1 %1065, label %1010, label %1066

1066:                                             ; preds = %1010
  store i32 %1063, ptr %1008, align 4
  %1067 = add nuw nsw i64 %943, 2
  %1068 = icmp ult i64 %1005, 31
  br i1 %1068, label %942, label %1069

1069:                                             ; preds = %1066
  %1070 = add nuw nsw i64 %939, 1
  %1071 = icmp ult i64 %939, 7
  br i1 %1071, label %.preheader14.3, label %1072

1072:                                             ; preds = %1069
  store i32 %1063, ptr @_anonymous2, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
  %1073 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %1073, 9223372036854775806
  br i1 %.not, label %1074, label %1

1074:                                             ; preds = %1072
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  tail call void @fill_zeros_i32_32_32_vector(ptr nonnull @_anonymous0)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(4096) @pipe_0_0_0_buff_0, ptr noundef nonnull align 32 dereferenceable(4096) @_anonymous0, i20 4096, i1 false)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 53, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %1074, %1204
  %1075 = phi i64 [ 0, %1074 ], [ %1205, %1204 ]
  %1076 = shl nuw nsw i64 %1075, 5
  br label %1077

1077:                                             ; preds = %1201, %.preheader
  %1078 = phi i64 [ 0, %.preheader ], [ %1202, %1201 ]
  %1079 = add nuw nsw i64 %1078, %1076
  %1080 = trunc i64 %1079 to i20
  %1081 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1080
  %1082 = load i32, ptr %1081, align 8
  br label %1083

1083:                                             ; preds = %1083, %1077
  %1084 = phi i64 [ 0, %1077 ], [ %1137, %1083 ]
  %1085 = phi i32 [ %1082, %1077 ], [ %1136, %1083 ]
  %1086 = or disjoint i64 %1084, %1076
  %1087 = trunc i64 %1086 to i20
  %1088 = getelementptr i16, ptr @_anonymous1, i20 %1087
  %1089 = load i16, ptr %1088, align 8
  %1090 = shl nuw nsw i64 %1084, 5
  %1091 = add nuw nsw i64 %1090, %1078
  %1092 = trunc nuw i64 %1091 to i20
  %1093 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1092
  %1094 = load i16, ptr %1093, align 4
  %1095 = mul i16 %1094, %1089
  %1096 = sext i16 %1095 to i32
  %1097 = add i32 %1085, %1096
  %1098 = or disjoint i64 %1084, 1
  %1099 = or disjoint i64 %1098, %1076
  %1100 = trunc i64 %1099 to i20
  %1101 = getelementptr i16, ptr @_anonymous1, i20 %1100
  %1102 = load i16, ptr %1101, align 2
  %1103 = shl nuw nsw i64 %1098, 5
  %1104 = add nuw nsw i64 %1103, %1078
  %1105 = trunc nuw i64 %1104 to i20
  %1106 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1105
  %1107 = load i16, ptr %1106, align 4
  %1108 = mul i16 %1107, %1102
  %1109 = sext i16 %1108 to i32
  %1110 = add i32 %1097, %1109
  %1111 = or disjoint i64 %1084, 2
  %1112 = or disjoint i64 %1111, %1076
  %1113 = trunc i64 %1112 to i20
  %1114 = getelementptr i16, ptr @_anonymous1, i20 %1113
  %1115 = load i16, ptr %1114, align 4
  %1116 = shl nuw nsw i64 %1111, 5
  %1117 = add nuw nsw i64 %1116, %1078
  %1118 = trunc nuw i64 %1117 to i20
  %1119 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1118
  %1120 = load i16, ptr %1119, align 4
  %1121 = mul i16 %1120, %1115
  %1122 = sext i16 %1121 to i32
  %1123 = add i32 %1110, %1122
  %1124 = or disjoint i64 %1084, 3
  %1125 = or disjoint i64 %1124, %1076
  %1126 = trunc i64 %1125 to i20
  %1127 = getelementptr i16, ptr @_anonymous1, i20 %1126
  %1128 = load i16, ptr %1127, align 2
  %1129 = shl nuw nsw i64 %1124, 5
  %1130 = add nuw nsw i64 %1129, %1078
  %1131 = trunc nuw i64 %1130 to i20
  %1132 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1131
  %1133 = load i16, ptr %1132, align 4
  %1134 = mul i16 %1133, %1128
  %1135 = sext i16 %1134 to i32
  %1136 = add i32 %1123, %1135
  %1137 = add nuw nsw i64 %1084, 4
  %1138 = icmp ult i64 %1124, 31
  br i1 %1138, label %1083, label %1139

1139:                                             ; preds = %1083
  store i32 %1136, ptr %1081, align 8
  %1140 = or disjoint i64 %1078, 1
  %1141 = add nuw nsw i64 %1140, %1076
  %1142 = trunc i64 %1141 to i20
  %1143 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1142
  %1144 = load i32, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1145, %1139
  %1146 = phi i64 [ 0, %1139 ], [ %1199, %1145 ]
  %1147 = phi i32 [ %1144, %1139 ], [ %1198, %1145 ]
  %1148 = or disjoint i64 %1146, %1076
  %1149 = trunc i64 %1148 to i20
  %1150 = getelementptr i16, ptr @_anonymous1, i20 %1149
  %1151 = load i16, ptr %1150, align 8
  %1152 = shl nuw nsw i64 %1146, 5
  %1153 = add nuw nsw i64 %1152, %1140
  %1154 = trunc nuw i64 %1153 to i20
  %1155 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1154
  %1156 = load i16, ptr %1155, align 2
  %1157 = mul i16 %1156, %1151
  %1158 = sext i16 %1157 to i32
  %1159 = add i32 %1147, %1158
  %1160 = or disjoint i64 %1146, 1
  %1161 = or disjoint i64 %1160, %1076
  %1162 = trunc i64 %1161 to i20
  %1163 = getelementptr i16, ptr @_anonymous1, i20 %1162
  %1164 = load i16, ptr %1163, align 2
  %1165 = shl nuw nsw i64 %1160, 5
  %1166 = add nuw nsw i64 %1165, %1140
  %1167 = trunc nuw i64 %1166 to i20
  %1168 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1167
  %1169 = load i16, ptr %1168, align 2
  %1170 = mul i16 %1169, %1164
  %1171 = sext i16 %1170 to i32
  %1172 = add i32 %1159, %1171
  %1173 = or disjoint i64 %1146, 2
  %1174 = or disjoint i64 %1173, %1076
  %1175 = trunc i64 %1174 to i20
  %1176 = getelementptr i16, ptr @_anonymous1, i20 %1175
  %1177 = load i16, ptr %1176, align 4
  %1178 = shl nuw nsw i64 %1173, 5
  %1179 = add nuw nsw i64 %1178, %1140
  %1180 = trunc nuw i64 %1179 to i20
  %1181 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1180
  %1182 = load i16, ptr %1181, align 2
  %1183 = mul i16 %1182, %1177
  %1184 = sext i16 %1183 to i32
  %1185 = add i32 %1172, %1184
  %1186 = or disjoint i64 %1146, 3
  %1187 = or disjoint i64 %1186, %1076
  %1188 = trunc i64 %1187 to i20
  %1189 = getelementptr i16, ptr @_anonymous1, i20 %1188
  %1190 = load i16, ptr %1189, align 2
  %1191 = shl nuw nsw i64 %1186, 5
  %1192 = add nuw nsw i64 %1191, %1140
  %1193 = trunc nuw i64 %1192 to i20
  %1194 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1193
  %1195 = load i16, ptr %1194, align 2
  %1196 = mul i16 %1195, %1190
  %1197 = sext i16 %1196 to i32
  %1198 = add i32 %1185, %1197
  %1199 = add nuw nsw i64 %1146, 4
  %1200 = icmp ult i64 %1186, 31
  br i1 %1200, label %1145, label %1201

1201:                                             ; preds = %1145
  store i32 %1198, ptr %1143, align 4
  %1202 = add nuw nsw i64 %1078, 2
  %1203 = icmp ult i64 %1140, 31
  br i1 %1203, label %1077, label %1204

1204:                                             ; preds = %1201
  %1205 = add nuw nsw i64 %1075, 1
  %1206 = icmp ult i64 %1075, 7
  br i1 %1206, label %.preheader, label %1207

1207:                                             ; preds = %1204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.1

.preheader.1:                                     ; preds = %1338, %1207
  %1208 = phi i64 [ 0, %1207 ], [ %1339, %1338 ]
  %1209 = shl nuw nsw i64 %1208, 5
  %1210 = add nuw nsw i64 %1209, 256
  br label %1211

1211:                                             ; preds = %1335, %.preheader.1
  %1212 = phi i64 [ 0, %.preheader.1 ], [ %1336, %1335 ]
  %1213 = add nuw nsw i64 %1212, %1210
  %1214 = trunc i64 %1213 to i20
  %1215 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1214
  %1216 = load i32, ptr %1215, align 8
  br label %1217

1217:                                             ; preds = %1217, %1211
  %1218 = phi i64 [ 0, %1211 ], [ %1271, %1217 ]
  %1219 = phi i32 [ %1216, %1211 ], [ %1270, %1217 ]
  %1220 = or disjoint i64 %1218, %1209
  %1221 = trunc i64 %1220 to i20
  %1222 = getelementptr i16, ptr @_anonymous1, i20 %1221
  %1223 = load i16, ptr %1222, align 8
  %1224 = shl nuw nsw i64 %1218, 5
  %1225 = add nuw nsw i64 %1224, %1212
  %1226 = trunc nuw i64 %1225 to i20
  %1227 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1226
  %1228 = load i16, ptr %1227, align 4
  %1229 = mul i16 %1228, %1223
  %1230 = sext i16 %1229 to i32
  %1231 = add i32 %1219, %1230
  %1232 = or disjoint i64 %1218, 1
  %1233 = or disjoint i64 %1232, %1209
  %1234 = trunc i64 %1233 to i20
  %1235 = getelementptr i16, ptr @_anonymous1, i20 %1234
  %1236 = load i16, ptr %1235, align 2
  %1237 = shl nuw nsw i64 %1232, 5
  %1238 = add nuw nsw i64 %1237, %1212
  %1239 = trunc nuw i64 %1238 to i20
  %1240 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1239
  %1241 = load i16, ptr %1240, align 4
  %1242 = mul i16 %1241, %1236
  %1243 = sext i16 %1242 to i32
  %1244 = add i32 %1231, %1243
  %1245 = or disjoint i64 %1218, 2
  %1246 = or disjoint i64 %1245, %1209
  %1247 = trunc i64 %1246 to i20
  %1248 = getelementptr i16, ptr @_anonymous1, i20 %1247
  %1249 = load i16, ptr %1248, align 4
  %1250 = shl nuw nsw i64 %1245, 5
  %1251 = add nuw nsw i64 %1250, %1212
  %1252 = trunc nuw i64 %1251 to i20
  %1253 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1252
  %1254 = load i16, ptr %1253, align 4
  %1255 = mul i16 %1254, %1249
  %1256 = sext i16 %1255 to i32
  %1257 = add i32 %1244, %1256
  %1258 = or disjoint i64 %1218, 3
  %1259 = or disjoint i64 %1258, %1209
  %1260 = trunc i64 %1259 to i20
  %1261 = getelementptr i16, ptr @_anonymous1, i20 %1260
  %1262 = load i16, ptr %1261, align 2
  %1263 = shl nuw nsw i64 %1258, 5
  %1264 = add nuw nsw i64 %1263, %1212
  %1265 = trunc nuw i64 %1264 to i20
  %1266 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1265
  %1267 = load i16, ptr %1266, align 4
  %1268 = mul i16 %1267, %1262
  %1269 = sext i16 %1268 to i32
  %1270 = add i32 %1257, %1269
  %1271 = add nuw nsw i64 %1218, 4
  %1272 = icmp ult i64 %1258, 31
  br i1 %1272, label %1217, label %1273

1273:                                             ; preds = %1217
  store i32 %1270, ptr %1215, align 8
  %1274 = or disjoint i64 %1212, 1
  %1275 = add nuw nsw i64 %1274, %1210
  %1276 = trunc i64 %1275 to i20
  %1277 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1276
  %1278 = load i32, ptr %1277, align 4
  br label %1279

1279:                                             ; preds = %1279, %1273
  %1280 = phi i64 [ 0, %1273 ], [ %1333, %1279 ]
  %1281 = phi i32 [ %1278, %1273 ], [ %1332, %1279 ]
  %1282 = or disjoint i64 %1280, %1209
  %1283 = trunc i64 %1282 to i20
  %1284 = getelementptr i16, ptr @_anonymous1, i20 %1283
  %1285 = load i16, ptr %1284, align 8
  %1286 = shl nuw nsw i64 %1280, 5
  %1287 = add nuw nsw i64 %1286, %1274
  %1288 = trunc nuw i64 %1287 to i20
  %1289 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1288
  %1290 = load i16, ptr %1289, align 2
  %1291 = mul i16 %1290, %1285
  %1292 = sext i16 %1291 to i32
  %1293 = add i32 %1281, %1292
  %1294 = or disjoint i64 %1280, 1
  %1295 = or disjoint i64 %1294, %1209
  %1296 = trunc i64 %1295 to i20
  %1297 = getelementptr i16, ptr @_anonymous1, i20 %1296
  %1298 = load i16, ptr %1297, align 2
  %1299 = shl nuw nsw i64 %1294, 5
  %1300 = add nuw nsw i64 %1299, %1274
  %1301 = trunc nuw i64 %1300 to i20
  %1302 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1301
  %1303 = load i16, ptr %1302, align 2
  %1304 = mul i16 %1303, %1298
  %1305 = sext i16 %1304 to i32
  %1306 = add i32 %1293, %1305
  %1307 = or disjoint i64 %1280, 2
  %1308 = or disjoint i64 %1307, %1209
  %1309 = trunc i64 %1308 to i20
  %1310 = getelementptr i16, ptr @_anonymous1, i20 %1309
  %1311 = load i16, ptr %1310, align 4
  %1312 = shl nuw nsw i64 %1307, 5
  %1313 = add nuw nsw i64 %1312, %1274
  %1314 = trunc nuw i64 %1313 to i20
  %1315 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1314
  %1316 = load i16, ptr %1315, align 2
  %1317 = mul i16 %1316, %1311
  %1318 = sext i16 %1317 to i32
  %1319 = add i32 %1306, %1318
  %1320 = or disjoint i64 %1280, 3
  %1321 = or disjoint i64 %1320, %1209
  %1322 = trunc i64 %1321 to i20
  %1323 = getelementptr i16, ptr @_anonymous1, i20 %1322
  %1324 = load i16, ptr %1323, align 2
  %1325 = shl nuw nsw i64 %1320, 5
  %1326 = add nuw nsw i64 %1325, %1274
  %1327 = trunc nuw i64 %1326 to i20
  %1328 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1327
  %1329 = load i16, ptr %1328, align 2
  %1330 = mul i16 %1329, %1324
  %1331 = sext i16 %1330 to i32
  %1332 = add i32 %1319, %1331
  %1333 = add nuw nsw i64 %1280, 4
  %1334 = icmp ult i64 %1320, 31
  br i1 %1334, label %1279, label %1335

1335:                                             ; preds = %1279
  store i32 %1332, ptr %1277, align 4
  %1336 = add nuw nsw i64 %1212, 2
  %1337 = icmp ult i64 %1274, 31
  br i1 %1337, label %1211, label %1338

1338:                                             ; preds = %1335
  %1339 = add nuw nsw i64 %1208, 1
  %1340 = icmp ult i64 %1208, 7
  br i1 %1340, label %.preheader.1, label %1341

1341:                                             ; preds = %1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.2

.preheader.2:                                     ; preds = %1472, %1341
  %1342 = phi i64 [ 0, %1341 ], [ %1473, %1472 ]
  %1343 = shl nuw nsw i64 %1342, 5
  %1344 = add nuw nsw i64 %1343, 512
  br label %1345

1345:                                             ; preds = %1469, %.preheader.2
  %1346 = phi i64 [ 0, %.preheader.2 ], [ %1470, %1469 ]
  %1347 = add nuw nsw i64 %1346, %1344
  %1348 = trunc i64 %1347 to i20
  %1349 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1348
  %1350 = load i32, ptr %1349, align 8
  br label %1351

1351:                                             ; preds = %1351, %1345
  %1352 = phi i64 [ 0, %1345 ], [ %1405, %1351 ]
  %1353 = phi i32 [ %1350, %1345 ], [ %1404, %1351 ]
  %1354 = or disjoint i64 %1352, %1343
  %1355 = trunc i64 %1354 to i20
  %1356 = getelementptr i16, ptr @_anonymous1, i20 %1355
  %1357 = load i16, ptr %1356, align 8
  %1358 = shl nuw nsw i64 %1352, 5
  %1359 = add nuw nsw i64 %1358, %1346
  %1360 = trunc nuw i64 %1359 to i20
  %1361 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1360
  %1362 = load i16, ptr %1361, align 4
  %1363 = mul i16 %1362, %1357
  %1364 = sext i16 %1363 to i32
  %1365 = add i32 %1353, %1364
  %1366 = or disjoint i64 %1352, 1
  %1367 = or disjoint i64 %1366, %1343
  %1368 = trunc i64 %1367 to i20
  %1369 = getelementptr i16, ptr @_anonymous1, i20 %1368
  %1370 = load i16, ptr %1369, align 2
  %1371 = shl nuw nsw i64 %1366, 5
  %1372 = add nuw nsw i64 %1371, %1346
  %1373 = trunc nuw i64 %1372 to i20
  %1374 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1373
  %1375 = load i16, ptr %1374, align 4
  %1376 = mul i16 %1375, %1370
  %1377 = sext i16 %1376 to i32
  %1378 = add i32 %1365, %1377
  %1379 = or disjoint i64 %1352, 2
  %1380 = or disjoint i64 %1379, %1343
  %1381 = trunc i64 %1380 to i20
  %1382 = getelementptr i16, ptr @_anonymous1, i20 %1381
  %1383 = load i16, ptr %1382, align 4
  %1384 = shl nuw nsw i64 %1379, 5
  %1385 = add nuw nsw i64 %1384, %1346
  %1386 = trunc nuw i64 %1385 to i20
  %1387 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1386
  %1388 = load i16, ptr %1387, align 4
  %1389 = mul i16 %1388, %1383
  %1390 = sext i16 %1389 to i32
  %1391 = add i32 %1378, %1390
  %1392 = or disjoint i64 %1352, 3
  %1393 = or disjoint i64 %1392, %1343
  %1394 = trunc i64 %1393 to i20
  %1395 = getelementptr i16, ptr @_anonymous1, i20 %1394
  %1396 = load i16, ptr %1395, align 2
  %1397 = shl nuw nsw i64 %1392, 5
  %1398 = add nuw nsw i64 %1397, %1346
  %1399 = trunc nuw i64 %1398 to i20
  %1400 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1399
  %1401 = load i16, ptr %1400, align 4
  %1402 = mul i16 %1401, %1396
  %1403 = sext i16 %1402 to i32
  %1404 = add i32 %1391, %1403
  %1405 = add nuw nsw i64 %1352, 4
  %1406 = icmp ult i64 %1392, 31
  br i1 %1406, label %1351, label %1407

1407:                                             ; preds = %1351
  store i32 %1404, ptr %1349, align 8
  %1408 = or disjoint i64 %1346, 1
  %1409 = add nuw nsw i64 %1408, %1344
  %1410 = trunc i64 %1409 to i20
  %1411 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1410
  %1412 = load i32, ptr %1411, align 4
  br label %1413

1413:                                             ; preds = %1413, %1407
  %1414 = phi i64 [ 0, %1407 ], [ %1467, %1413 ]
  %1415 = phi i32 [ %1412, %1407 ], [ %1466, %1413 ]
  %1416 = or disjoint i64 %1414, %1343
  %1417 = trunc i64 %1416 to i20
  %1418 = getelementptr i16, ptr @_anonymous1, i20 %1417
  %1419 = load i16, ptr %1418, align 8
  %1420 = shl nuw nsw i64 %1414, 5
  %1421 = add nuw nsw i64 %1420, %1408
  %1422 = trunc nuw i64 %1421 to i20
  %1423 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1422
  %1424 = load i16, ptr %1423, align 2
  %1425 = mul i16 %1424, %1419
  %1426 = sext i16 %1425 to i32
  %1427 = add i32 %1415, %1426
  %1428 = or disjoint i64 %1414, 1
  %1429 = or disjoint i64 %1428, %1343
  %1430 = trunc i64 %1429 to i20
  %1431 = getelementptr i16, ptr @_anonymous1, i20 %1430
  %1432 = load i16, ptr %1431, align 2
  %1433 = shl nuw nsw i64 %1428, 5
  %1434 = add nuw nsw i64 %1433, %1408
  %1435 = trunc nuw i64 %1434 to i20
  %1436 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1435
  %1437 = load i16, ptr %1436, align 2
  %1438 = mul i16 %1437, %1432
  %1439 = sext i16 %1438 to i32
  %1440 = add i32 %1427, %1439
  %1441 = or disjoint i64 %1414, 2
  %1442 = or disjoint i64 %1441, %1343
  %1443 = trunc i64 %1442 to i20
  %1444 = getelementptr i16, ptr @_anonymous1, i20 %1443
  %1445 = load i16, ptr %1444, align 4
  %1446 = shl nuw nsw i64 %1441, 5
  %1447 = add nuw nsw i64 %1446, %1408
  %1448 = trunc nuw i64 %1447 to i20
  %1449 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1448
  %1450 = load i16, ptr %1449, align 2
  %1451 = mul i16 %1450, %1445
  %1452 = sext i16 %1451 to i32
  %1453 = add i32 %1440, %1452
  %1454 = or disjoint i64 %1414, 3
  %1455 = or disjoint i64 %1454, %1343
  %1456 = trunc i64 %1455 to i20
  %1457 = getelementptr i16, ptr @_anonymous1, i20 %1456
  %1458 = load i16, ptr %1457, align 2
  %1459 = shl nuw nsw i64 %1454, 5
  %1460 = add nuw nsw i64 %1459, %1408
  %1461 = trunc nuw i64 %1460 to i20
  %1462 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1461
  %1463 = load i16, ptr %1462, align 2
  %1464 = mul i16 %1463, %1458
  %1465 = sext i16 %1464 to i32
  %1466 = add i32 %1453, %1465
  %1467 = add nuw nsw i64 %1414, 4
  %1468 = icmp ult i64 %1454, 31
  br i1 %1468, label %1413, label %1469

1469:                                             ; preds = %1413
  store i32 %1466, ptr %1411, align 4
  %1470 = add nuw nsw i64 %1346, 2
  %1471 = icmp ult i64 %1408, 31
  br i1 %1471, label %1345, label %1472

1472:                                             ; preds = %1469
  %1473 = add nuw nsw i64 %1342, 1
  %1474 = icmp ult i64 %1342, 7
  br i1 %1474, label %.preheader.2, label %1475

1475:                                             ; preds = %1472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) @_anonymous1, ptr noundef nonnull align 32 dereferenceable(512) @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %.preheader.3

.preheader.3:                                     ; preds = %1606, %1475
  %1476 = phi i64 [ 0, %1475 ], [ %1607, %1606 ]
  %1477 = shl nuw nsw i64 %1476, 5
  %1478 = add nuw nsw i64 %1477, 768
  br label %1479

1479:                                             ; preds = %1603, %.preheader.3
  %1480 = phi i64 [ 0, %.preheader.3 ], [ %1604, %1603 ]
  %1481 = add nuw nsw i64 %1480, %1478
  %1482 = trunc i64 %1481 to i20
  %1483 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1482
  %1484 = load i32, ptr %1483, align 8
  br label %1485

1485:                                             ; preds = %1485, %1479
  %1486 = phi i64 [ 0, %1479 ], [ %1539, %1485 ]
  %1487 = phi i32 [ %1484, %1479 ], [ %1538, %1485 ]
  %1488 = or disjoint i64 %1486, %1477
  %1489 = trunc i64 %1488 to i20
  %1490 = getelementptr i16, ptr @_anonymous1, i20 %1489
  %1491 = load i16, ptr %1490, align 8
  %1492 = shl nuw nsw i64 %1486, 5
  %1493 = add nuw nsw i64 %1492, %1480
  %1494 = trunc nuw i64 %1493 to i20
  %1495 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1494
  %1496 = load i16, ptr %1495, align 4
  %1497 = mul i16 %1496, %1491
  %1498 = sext i16 %1497 to i32
  %1499 = add i32 %1487, %1498
  %1500 = or disjoint i64 %1486, 1
  %1501 = or disjoint i64 %1500, %1477
  %1502 = trunc i64 %1501 to i20
  %1503 = getelementptr i16, ptr @_anonymous1, i20 %1502
  %1504 = load i16, ptr %1503, align 2
  %1505 = shl nuw nsw i64 %1500, 5
  %1506 = add nuw nsw i64 %1505, %1480
  %1507 = trunc nuw i64 %1506 to i20
  %1508 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1507
  %1509 = load i16, ptr %1508, align 4
  %1510 = mul i16 %1509, %1504
  %1511 = sext i16 %1510 to i32
  %1512 = add i32 %1499, %1511
  %1513 = or disjoint i64 %1486, 2
  %1514 = or disjoint i64 %1513, %1477
  %1515 = trunc i64 %1514 to i20
  %1516 = getelementptr i16, ptr @_anonymous1, i20 %1515
  %1517 = load i16, ptr %1516, align 4
  %1518 = shl nuw nsw i64 %1513, 5
  %1519 = add nuw nsw i64 %1518, %1480
  %1520 = trunc nuw i64 %1519 to i20
  %1521 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1520
  %1522 = load i16, ptr %1521, align 4
  %1523 = mul i16 %1522, %1517
  %1524 = sext i16 %1523 to i32
  %1525 = add i32 %1512, %1524
  %1526 = or disjoint i64 %1486, 3
  %1527 = or disjoint i64 %1526, %1477
  %1528 = trunc i64 %1527 to i20
  %1529 = getelementptr i16, ptr @_anonymous1, i20 %1528
  %1530 = load i16, ptr %1529, align 2
  %1531 = shl nuw nsw i64 %1526, 5
  %1532 = add nuw nsw i64 %1531, %1480
  %1533 = trunc nuw i64 %1532 to i20
  %1534 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1533
  %1535 = load i16, ptr %1534, align 4
  %1536 = mul i16 %1535, %1530
  %1537 = sext i16 %1536 to i32
  %1538 = add i32 %1525, %1537
  %1539 = add nuw nsw i64 %1486, 4
  %1540 = icmp ult i64 %1526, 31
  br i1 %1540, label %1485, label %1541

1541:                                             ; preds = %1485
  store i32 %1538, ptr %1483, align 8
  %1542 = or disjoint i64 %1480, 1
  %1543 = add nuw nsw i64 %1542, %1478
  %1544 = trunc i64 %1543 to i20
  %1545 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i20 %1544
  %1546 = load i32, ptr %1545, align 4
  br label %1547

1547:                                             ; preds = %1547, %1541
  %1548 = phi i64 [ 0, %1541 ], [ %1601, %1547 ]
  %1549 = phi i32 [ %1546, %1541 ], [ %1600, %1547 ]
  %1550 = or disjoint i64 %1548, %1477
  %1551 = trunc i64 %1550 to i20
  %1552 = getelementptr i16, ptr @_anonymous1, i20 %1551
  %1553 = load i16, ptr %1552, align 8
  %1554 = shl nuw nsw i64 %1548, 5
  %1555 = add nuw nsw i64 %1554, %1542
  %1556 = trunc nuw i64 %1555 to i20
  %1557 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1556
  %1558 = load i16, ptr %1557, align 2
  %1559 = mul i16 %1558, %1553
  %1560 = sext i16 %1559 to i32
  %1561 = add i32 %1549, %1560
  %1562 = or disjoint i64 %1548, 1
  %1563 = or disjoint i64 %1562, %1477
  %1564 = trunc i64 %1563 to i20
  %1565 = getelementptr i16, ptr @_anonymous1, i20 %1564
  %1566 = load i16, ptr %1565, align 2
  %1567 = shl nuw nsw i64 %1562, 5
  %1568 = add nuw nsw i64 %1567, %1542
  %1569 = trunc nuw i64 %1568 to i20
  %1570 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1569
  %1571 = load i16, ptr %1570, align 2
  %1572 = mul i16 %1571, %1566
  %1573 = sext i16 %1572 to i32
  %1574 = add i32 %1561, %1573
  %1575 = or disjoint i64 %1548, 2
  %1576 = or disjoint i64 %1575, %1477
  %1577 = trunc i64 %1576 to i20
  %1578 = getelementptr i16, ptr @_anonymous1, i20 %1577
  %1579 = load i16, ptr %1578, align 4
  %1580 = shl nuw nsw i64 %1575, 5
  %1581 = add nuw nsw i64 %1580, %1542
  %1582 = trunc nuw i64 %1581 to i20
  %1583 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1582
  %1584 = load i16, ptr %1583, align 2
  %1585 = mul i16 %1584, %1579
  %1586 = sext i16 %1585 to i32
  %1587 = add i32 %1574, %1586
  %1588 = or disjoint i64 %1548, 3
  %1589 = or disjoint i64 %1588, %1477
  %1590 = trunc i64 %1589 to i20
  %1591 = getelementptr i16, ptr @_anonymous1, i20 %1590
  %1592 = load i16, ptr %1591, align 2
  %1593 = shl nuw nsw i64 %1588, 5
  %1594 = add nuw nsw i64 %1593, %1542
  %1595 = trunc nuw i64 %1594 to i20
  %1596 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i20 %1595
  %1597 = load i16, ptr %1596, align 2
  %1598 = mul i16 %1597, %1592
  %1599 = sext i16 %1598 to i32
  %1600 = add i32 %1587, %1599
  %1601 = add nuw nsw i64 %1548, 4
  %1602 = icmp ult i64 %1588, 31
  br i1 %1602, label %1547, label %1603

1603:                                             ; preds = %1547
  store i32 %1600, ptr %1545, align 4
  %1604 = add nuw nsw i64 %1480, 2
  %1605 = icmp ult i64 %1542, 31
  br i1 %1605, label %1479, label %1606

1606:                                             ; preds = %1603
  %1607 = add nuw nsw i64 %1476, 1
  %1608 = icmp ult i64 %1476, 7
  br i1 %1608, label %.preheader.3, label %1609

1609:                                             ; preds = %1606
  store i32 %1600, ptr @_anonymous2, align 32
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 52, i32 1)
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

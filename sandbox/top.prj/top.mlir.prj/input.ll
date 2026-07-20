; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@_anonymous23 = external global i32
@_anonymous22 = external global [8 x [32 x i16]]
@_anonymous21 = external global [32 x [32 x i32]]
@_anonymous20 = external global i32
@_anonymous19 = external global [8 x [32 x i16]]
@_anonymous18 = external global [32 x [32 x i32]]
@_anonymous17 = external global i32
@_anonymous16 = external global [8 x [32 x i16]]
@_anonymous15 = external global [32 x [32 x i32]]
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
@_anonymous3 = external global [32 x [32 x i32]]
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
@fifo_4_cons_buff_1 = external global [2 x [2 x [32 x [32 x i16]]]]
@fifo_4_cons_buff_0 = external global [2 x [2 x [32 x [32 x i16]]]]
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
@fifo_9_cons_buff_1 = external global [2 x [2 x [32 x [32 x i16]]]]
@fifo_9_cons_buff_0 = external global [2 x [2 x [32 x [32 x i16]]]]
@fifo_10_buff_1 = external global [32 x [32 x i32]]
@fifo_10_buff_0 = external global [32 x [32 x i32]]
@fifo_11_buff_1 = external global [32 x [32 x i32]]
@fifo_11_buff_0 = external global [32 x [32 x i32]]
@fifo_12_buff_1 = external global [32 x [32 x i32]]
@fifo_12_buff_0 = external global [32 x [32 x i32]]
@fifo_13_buff_1 = external global [32 x [32 x i32]]
@fifo_13_buff_0 = external global [32 x [32 x i32]]
@fifo_14_buff_1 = external global [2 x [2 x [32 x [32 x i32]]]]
@fifo_14_buff_0 = external global [2 x [2 x [32 x [32 x i32]]]]
@fifo_14_cons = external global [2 x [2 x [32 x [32 x i32]]]]
@fifo_14 = external global [2 x [2 x [32 x [32 x i32]]]]
@fifo_13_cons = external global [32 x [32 x i32]]
@fifo_13 = external global [32 x [32 x i32]]
@fifo_12_cons = external global [32 x [32 x i32]]
@fifo_12 = external global [32 x [32 x i32]]
@fifo_11_cons = external global [32 x [32 x i32]]
@fifo_11 = external global [32 x [32 x i32]]
@fifo_10_cons = external global [32 x [32 x i32]]
@fifo_10 = external global [32 x [32 x i32]]
@fifo_9_cons = external global [2 x [2 x [32 x [32 x i16]]]]
@fifo_9 = external global [2 x [2 x [32 x [32 x i16]]]]
@fifo_8_0_cons = external global [32 x [32 x i16]]
@fifo_8_1_cons = external global [32 x [32 x i16]]
@fifo_8 = external global [32 x [32 x i16]]
@fifo_7_0_cons = external global [32 x [32 x i16]]
@fifo_7_1_cons = external global [32 x [32 x i16]]
@fifo_7 = external global [32 x [32 x i16]]
@fifo_6_0_cons = external global [32 x [32 x i16]]
@fifo_6_1_cons = external global [32 x [32 x i16]]
@fifo_6 = external global [32 x [32 x i16]]
@fifo_5_0_cons = external global [32 x [32 x i16]]
@fifo_5_1_cons = external global [32 x [32 x i16]]
@fifo_5 = external global [32 x [32 x i16]]
@fifo_4_cons = external global [2 x [2 x [32 x [32 x i16]]]]
@fifo_4 = external global [2 x [2 x [32 x [32 x i16]]]]
@fifo_3_0_cons = external global [32 x [32 x i16]]
@fifo_3_1_cons = external global [32 x [32 x i16]]
@fifo_3 = external global [32 x [32 x i16]]
@fifo_2_0_cons = external global [32 x [32 x i16]]
@fifo_2_1_cons = external global [32 x [32 x i16]]
@fifo_2 = external global [32 x [32 x i16]]
@fifo_1_0_cons = external global [32 x [32 x i16]]
@fifo_1_1_cons = external global [32 x [32 x i16]]
@fifo_1 = external global [32 x [32 x i16]]
@fifo_0_0_cons = external global [32 x [32 x i16]]
@fifo_0_1_cons = external global [32 x [32 x i16]]
@fifo_0 = external global [32 x [32 x i16]]
@pipe_0_1_1 = external global [32 x [32 x i32]]
@pipe_0_1_0 = external global [32 x [32 x i32]]
@pipe_0_0_1 = external global [32 x [32 x i32]]
@pipe_0_0_0 = external global [32 x [32 x i32]]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @fill_zeros_i32_32_32_vector(ptr)

define void @core_3_2() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @fifo_13_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous22, ptr @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @fifo_13_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  store i32 %37, ptr @_anonymous23, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous22, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_1_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  %51 = load i32, ptr @_anonymous23, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  store i32 %53, ptr @_anonymous23, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  %56 = load i32, ptr @_anonymous23, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @fifo_13_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous22, ptr @fifo_3_0_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @fifo_13_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  store i32 %95, ptr @_anonymous23, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous22, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_1_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_8_1_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  %109 = load i32, ptr @_anonymous23, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  store i32 %111, ptr @_anonymous23, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  %114 = load i32, ptr @_anonymous23, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @fifo_13_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous22, ptr @fifo_3_0_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @fifo_13_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  store i32 %155, ptr @_anonymous23, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous22, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous22, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_1_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_8_1_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  %169 = load i32, ptr @_anonymous23, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  store i32 %171, ptr @_anonymous23, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous23, i64 32) ]
  %174 = load i32, ptr @_anonymous23, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_13_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_2_2() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @fifo_12_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous19, ptr @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @fifo_12_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  store i32 %37, ptr @_anonymous20, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous19, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_0_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  %51 = load i32, ptr @_anonymous20, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  store i32 %53, ptr @_anonymous20, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  %56 = load i32, ptr @_anonymous20, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @fifo_12_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous19, ptr @fifo_3_1_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @fifo_12_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  store i32 %95, ptr @_anonymous20, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous19, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_0_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_7_0_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  %109 = load i32, ptr @_anonymous20, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  store i32 %111, ptr @_anonymous20, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  %114 = load i32, ptr @_anonymous20, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @fifo_12_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_3_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous19, ptr @fifo_3_1_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @fifo_12_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  store i32 %155, ptr @_anonymous20, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous19, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous19, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_0_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_7_0_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  %169 = load i32, ptr @_anonymous20, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  store i32 %171, ptr @_anonymous20, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous20, i64 32) ]
  %174 = load i32, ptr @_anonymous20, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_12_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @fifo_11_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous16, ptr @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @fifo_11_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  store i32 %37, ptr @_anonymous17, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous16, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_0_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  %51 = load i32, ptr @_anonymous17, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  store i32 %53, ptr @_anonymous17, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  %56 = load i32, ptr @_anonymous17, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @fifo_11_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous16, ptr @fifo_1_1_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @fifo_11_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  store i32 %95, ptr @_anonymous17, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous16, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_0_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_8_0_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  %109 = load i32, ptr @_anonymous17, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  store i32 %111, ptr @_anonymous17, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  %114 = load i32, ptr @_anonymous17, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @fifo_11_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous16, ptr @fifo_1_1_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @fifo_11_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  store i32 %155, ptr @_anonymous17, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous16, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous16, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_8_0_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_8_0_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  %169 = load i32, ptr @_anonymous17, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  store i32 %171, ptr @_anonymous17, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous17, i64 32) ]
  %174 = load i32, ptr @_anonymous17, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_11_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_3_3() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous12)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @_anonymous12, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous13, ptr @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  store i32 %37, ptr @_anonymous14, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous13, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_0_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  %51 = load i32, ptr @_anonymous14, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  store i32 %53, ptr @_anonymous14, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  %56 = load i32, ptr @_anonymous14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous12)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @_anonymous12, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous13, ptr @fifo_2_0_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @pipe_0_1_1_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  store i32 %95, ptr @_anonymous14, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous13, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_0_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_6_0_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  %109 = load i32, ptr @_anonymous14, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  store i32 %111, ptr @_anonymous14, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  %114 = load i32, ptr @_anonymous14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous12)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous12, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @_anonymous12, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous13, ptr @fifo_2_0_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @pipe_0_1_1_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  store i32 %155, ptr @_anonymous14, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous13, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous13, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_0_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_6_0_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  %169 = load i32, ptr @_anonymous14, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  store i32 %171, ptr @_anonymous14, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous14, i64 32) ]
  %174 = load i32, ptr @_anonymous14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_1_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous9)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @_anonymous9, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous10, ptr @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  store i32 %37, ptr @_anonymous11, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous10, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_1_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  %51 = load i32, ptr @_anonymous11, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  store i32 %53, ptr @_anonymous11, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  %56 = load i32, ptr @_anonymous11, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous9)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @_anonymous9, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous10, ptr @fifo_2_1_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @pipe_0_1_0_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  store i32 %95, ptr @_anonymous11, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous10, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_1_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_5_1_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  %109 = load i32, ptr @_anonymous11, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  store i32 %111, ptr @_anonymous11, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  %114 = load i32, ptr @_anonymous11, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous9)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous9, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @_anonymous9, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_2_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous10, ptr @fifo_2_1_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @pipe_0_1_0_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  store i32 %155, ptr @_anonymous11, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous10, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous10, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_1_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_5_1_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  %169 = load i32, ptr @_anonymous11, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  store i32 %171, ptr @_anonymous11, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous11, i64 32) ]
  %174 = load i32, ptr @_anonymous11, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_1_0_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous6)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @_anonymous6, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous7, ptr @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  store i32 %37, ptr @_anonymous8, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous7, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_1_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  %51 = load i32, ptr @_anonymous8, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  store i32 %53, ptr @_anonymous8, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  %56 = load i32, ptr @_anonymous8, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous6)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @_anonymous6, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous7, ptr @fifo_0_0_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @pipe_0_0_1_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  store i32 %95, ptr @_anonymous8, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous7, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_1_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_6_1_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  %109 = load i32, ptr @_anonymous8, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  store i32 %111, ptr @_anonymous8, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  %114 = load i32, ptr @_anonymous8, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous6)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous6, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @_anonymous6, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous7, ptr @fifo_0_0_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @pipe_0_0_1_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  store i32 %155, ptr @_anonymous8, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous7, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous7, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_6_1_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_6_1_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  %169 = load i32, ptr @_anonymous8, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  store i32 %171, ptr @_anonymous8, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous8, i64 32) ]
  %174 = load i32, ptr @_anonymous8, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_1_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @fifo_10_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous4, ptr @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @fifo_10_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  store i32 %37, ptr @_anonymous5, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous4, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_1_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  %51 = load i32, ptr @_anonymous5, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  store i32 %53, ptr @_anonymous5, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  %56 = load i32, ptr @_anonymous5, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @fifo_10_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous4, ptr @fifo_1_0_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @fifo_10_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  store i32 %95, ptr @_anonymous5, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous4, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_1_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_7_1_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  %109 = load i32, ptr @_anonymous5, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  store i32 %111, ptr @_anonymous5, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  %114 = load i32, ptr @_anonymous5, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @fifo_10_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous4, ptr @fifo_1_0_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @fifo_10_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  store i32 %155, ptr @_anonymous5, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous4, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous4, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_7_1_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_7_1_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  %169 = load i32, ptr @_anonymous5, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  store i32 %171, ptr @_anonymous5, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous5, i64 32) ]
  %174 = load i32, ptr @_anonymous5, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_10_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 32, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %120, %0
  %2 = phi i64 [ %121, %120 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %122

4:                                                ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous0)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %5

5:                                                ; preds = %18, %4
  %6 = phi i64 [ %19, %18 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 32
  br i1 %7, label %8, label %20

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %17, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 32
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  %12 = mul i64 %6, 32
  %13 = add i64 %12, %9
  %14 = getelementptr i32, ptr @_anonymous0, i64 %13
  %15 = load i32, ptr %14, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  %16 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i64 %13
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  br label %8

18:                                               ; preds = %8
  %19 = add i64 %6, 1
  br label %5

20:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %21

21:                                               ; preds = %60, %20
  %22 = phi i64 [ %61, %60 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, 4
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous1, ptr @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %25

25:                                               ; preds = %58, %24
  %26 = phi i64 [ %59, %58 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %60

28:                                               ; preds = %55, %25
  %29 = phi i64 [ %57, %55 ], [ 0, %25 ]
  %30 = icmp slt i64 %29, 32
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = mul nsw i64 %22, 8
  %33 = add i64 %32, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  %34 = mul i64 %33, 32
  %35 = add i64 %34, %29
  %36 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i64 %35
  %37 = load i32, ptr %36, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  store i32 %37, ptr @_anonymous2, align 4
  br label %38

38:                                               ; preds = %41, %31
  %39 = phi i64 [ %54, %41 ], [ 0, %31 ]
  %40 = icmp slt i64 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  %42 = mul i64 %26, 32
  %43 = add i64 %42, %39
  %44 = getelementptr i16, ptr @_anonymous1, i64 %43
  %45 = load i16, ptr %44, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_0_cons_buff_0, i64 32) ]
  %46 = mul i64 %39, 32
  %47 = add i64 %46, %29
  %48 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i64 %47
  %49 = load i16, ptr %48, align 2
  %50 = mul i16 %45, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  %51 = load i32, ptr @_anonymous2, align 4
  %52 = sext i16 %50 to i32
  %53 = add i32 %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  store i32 %53, ptr @_anonymous2, align 4
  %54 = add i64 %39, 1
  br label %38

55:                                               ; preds = %38
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  %56 = load i32, ptr @_anonymous2, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  store i32 %56, ptr %36, align 4
  %57 = add i64 %29, 1
  br label %28

58:                                               ; preds = %28
  %59 = add i64 %26, 1
  br label %25

60:                                               ; preds = %25
  %61 = add i64 %22, 1
  br label %21

62:                                               ; preds = %21
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous0)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %63

63:                                               ; preds = %76, %62
  %64 = phi i64 [ %77, %76 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %69, %63
  %67 = phi i64 [ %75, %69 ], [ 0, %63 ]
  %68 = icmp slt i64 %67, 32
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  %70 = mul i64 %64, 32
  %71 = add i64 %70, %67
  %72 = getelementptr i32, ptr @_anonymous0, i64 %71
  %73 = load i32, ptr %72, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  %74 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i64 %71
  store i32 %73, ptr %74, align 4
  %75 = add i64 %67, 1
  br label %66

76:                                               ; preds = %66
  %77 = add i64 %64, 1
  br label %63

78:                                               ; preds = %63
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %79

79:                                               ; preds = %118, %78
  %80 = phi i64 [ %119, %118 ], [ 0, %78 ]
  %81 = icmp slt i64 %80, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous1, ptr @fifo_0_1_cons_buff_1, i64 512, i1 false)
  br label %83

83:                                               ; preds = %116, %82
  %84 = phi i64 [ %117, %116 ], [ 0, %82 ]
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %118

86:                                               ; preds = %113, %83
  %87 = phi i64 [ %115, %113 ], [ 0, %83 ]
  %88 = icmp slt i64 %87, 32
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = mul nsw i64 %80, 8
  %91 = add i64 %90, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  %92 = mul i64 %91, 32
  %93 = add i64 %92, %87
  %94 = getelementptr i32, ptr @pipe_0_0_0_buff_1, i64 %93
  %95 = load i32, ptr %94, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  store i32 %95, ptr @_anonymous2, align 4
  br label %96

96:                                               ; preds = %99, %89
  %97 = phi i64 [ %112, %99 ], [ 0, %89 ]
  %98 = icmp slt i64 %97, 32
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  %100 = mul i64 %84, 32
  %101 = add i64 %100, %97
  %102 = getelementptr i16, ptr @_anonymous1, i64 %101
  %103 = load i16, ptr %102, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_0_cons_buff_1, i64 32) ]
  %104 = mul i64 %97, 32
  %105 = add i64 %104, %87
  %106 = getelementptr i16, ptr @fifo_5_0_cons_buff_1, i64 %105
  %107 = load i16, ptr %106, align 2
  %108 = mul i16 %103, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  %109 = load i32, ptr @_anonymous2, align 4
  %110 = sext i16 %108 to i32
  %111 = add i32 %109, %110
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  store i32 %111, ptr @_anonymous2, align 4
  %112 = add i64 %97, 1
  br label %96

113:                                              ; preds = %96
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  %114 = load i32, ptr @_anonymous2, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_1, i64 32) ]
  store i32 %114, ptr %94, align 4
  %115 = add i64 %87, 1
  br label %86

116:                                              ; preds = %86
  %117 = add i64 %84, 1
  br label %83

118:                                              ; preds = %83
  %119 = add i64 %80, 1
  br label %79

120:                                              ; preds = %79
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  %121 = add i64 %2, 2
  br label %1

122:                                              ; preds = %1
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  call void @fill_zeros_i32_32_32_vector(ptr @_anonymous0)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  br label %123

123:                                              ; preds = %136, %122
  %124 = phi i64 [ %137, %136 ], [ 0, %122 ]
  %125 = icmp slt i64 %124, 32
  br i1 %125, label %126, label %138

126:                                              ; preds = %129, %123
  %127 = phi i64 [ %135, %129 ], [ 0, %123 ]
  %128 = icmp slt i64 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous0, i64 32) ]
  %130 = mul i64 %124, 32
  %131 = add i64 %130, %127
  %132 = getelementptr i32, ptr @_anonymous0, i64 %131
  %133 = load i32, ptr %132, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  %134 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i64 %131
  store i32 %133, ptr %134, align 4
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = add i64 %124, 1
  br label %123

138:                                              ; preds = %123
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 53, i32 -1)
  br label %139

139:                                              ; preds = %178, %138
  %140 = phi i64 [ %179, %178 ], [ 0, %138 ]
  %141 = icmp slt i64 %140, 4
  br i1 %141, label %142, label %180

142:                                              ; preds = %139
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  call void @llvm.memcpy.p0.p0.i64(ptr @_anonymous1, ptr @fifo_0_1_cons_buff_0, i64 512, i1 false)
  br label %143

143:                                              ; preds = %176, %142
  %144 = phi i64 [ %177, %176 ], [ 0, %142 ]
  %145 = icmp slt i64 %144, 8
  br i1 %145, label %146, label %178

146:                                              ; preds = %173, %143
  %147 = phi i64 [ %175, %173 ], [ 0, %143 ]
  %148 = icmp slt i64 %147, 32
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = mul nsw i64 %140, 8
  %151 = add i64 %150, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  %152 = mul i64 %151, 32
  %153 = add i64 %152, %147
  %154 = getelementptr i32, ptr @pipe_0_0_0_buff_0, i64 %153
  %155 = load i32, ptr %154, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  store i32 %155, ptr @_anonymous2, align 4
  br label %156

156:                                              ; preds = %159, %149
  %157 = phi i64 [ %172, %159 ], [ 0, %149 ]
  %158 = icmp slt i64 %157, 32
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous1, i64 32) ]
  %160 = mul i64 %144, 32
  %161 = add i64 %160, %157
  %162 = getelementptr i16, ptr @_anonymous1, i64 %161
  %163 = load i16, ptr %162, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @fifo_5_0_cons_buff_0, i64 32) ]
  %164 = mul i64 %157, 32
  %165 = add i64 %164, %147
  %166 = getelementptr i16, ptr @fifo_5_0_cons_buff_0, i64 %165
  %167 = load i16, ptr %166, align 2
  %168 = mul i16 %163, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  %169 = load i32, ptr @_anonymous2, align 4
  %170 = sext i16 %168 to i32
  %171 = add i32 %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  store i32 %171, ptr @_anonymous2, align 4
  %172 = add i64 %157, 1
  br label %156

173:                                              ; preds = %156
  call void @llvm.assume(i1 true) [ "align"(ptr @_anonymous2, i64 32) ]
  %174 = load i32, ptr @_anonymous2, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @pipe_0_0_0_buff_0, i64 32) ]
  store i32 %174, ptr %154, align 4
  %175 = add i64 %147, 1
  br label %146

176:                                              ; preds = %146
  %177 = add i64 %144, 1
  br label %143

178:                                              ; preds = %143
  %179 = add i64 %140, 1
  br label %139

180:                                              ; preds = %139
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 52, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

; ModuleID = 'print_chord.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.chord_node = type { i32, %struct.chord_node* }

@.str = private unnamed_addr constant [11 x i8] c"(%d,%d|%d)\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @print_chord(%struct.chord_node* %list) #0 {
  %1 = alloca %struct.chord_node*, align 8
  %tmp = alloca %struct.chord_node*, align 8
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n3 = alloca i32, align 4
  store %struct.chord_node* %list, %struct.chord_node** %1, align 8
  %2 = load %struct.chord_node** %1, align 8
  store %struct.chord_node* %2, %struct.chord_node** %tmp, align 8
  store i32 1, i32* %n1, align 4
  store i32 2, i32* %n2, align 4
  store i32 3, i32* %n3, align 4
  br label %3

; <label>:3                                       ; preds = %6, %0
  %4 = load %struct.chord_node** %tmp, align 8
  %5 = icmp ne %struct.chord_node* %4, null
  br i1 %5, label %6, label %14

; <label>:6                                       ; preds = %3
  %7 = load i32* %n1, align 4
  %8 = load i32* %n2, align 4
  %9 = load i32* %n3, align 4
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %8, i32 %9)
  %11 = load %struct.chord_node** %tmp, align 8
  %12 = getelementptr inbounds %struct.chord_node* %11, i32 0, i32 1
  %13 = load %struct.chord_node** %12, align 8
  store %struct.chord_node* %13, %struct.chord_node** %tmp, align 8
  br label %3

; <label>:14                                      ; preds = %3
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.2 (clang-700.1.81)"}

; ModuleID = 'chord.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.Chord = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define %struct.Chord* @getChord() #0 {
  %c1 = alloca %struct.Chord*, align 8
  %1 = call i8* @malloc(i64 16)
  %2 = bitcast i8* %1 to %struct.Chord*
  store %struct.Chord* %2, %struct.Chord** %c1, align 8
  %3 = load %struct.Chord** %c1, align 8
  %4 = getelementptr inbounds %struct.Chord* %3, i32 0, i32 0
  store i32 2, i32* %4, align 4
  %5 = load %struct.Chord** %c1, align 8
  %6 = getelementptr inbounds %struct.Chord* %5, i32 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = load %struct.Chord** %c1, align 8
  ret %struct.Chord* %7
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %tmp = alloca %struct.Chord*, align 8
  store i32 0, i32* %1
  %2 = call %struct.Chord* @getChord()
  store %struct.Chord* %2, %struct.Chord** %tmp, align 8
  %3 = load %struct.Chord** %tmp, align 8
  %4 = getelementptr inbounds %struct.Chord* %3, i32 0, i32 0
  %5 = load i32* %4, align 4
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %5)
  %7 = load %struct.Chord** %tmp, align 8
  %8 = bitcast %struct.Chord* %7 to i8*
  call void @free(i8* %8)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare void @free(i8*) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.2 (clang-700.1.81)"}

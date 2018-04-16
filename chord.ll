; ModuleID = 'test.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.Chord = type { i32, i32* }

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

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.2 (clang-700.1.81)"}

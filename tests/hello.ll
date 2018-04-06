; ModuleID = 'Mus'

%arr_note_t = type { i32, i32, i32* }

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [12 x i8] c"(%d,%d|%d)\0A\00"
@fmt.2 = private unnamed_addr constant [4 x i8] c"%g\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @print_note_func(i8*, i8*, i8*)

define i32 @main() {
entry:
  %i = alloca i32
  %j = alloca i32
  %b = alloca i1
  %a = alloca i32
  %n = alloca i32
  %c = alloca %arr_note_t*
  %d = alloca %arr_note_t*
  store i32 1, i32* %i
  store i32 16908291, i32* %a
  store i32 101122056, i32* %n
  %a1 = load i32, i32* %a
  %a2 = load i32, i32* %a
  %a3 = load i32, i32* %a
  %a4 = load i32, i32* %a
  %a5 = load i32, i32* %a
  %malloccall = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 5))
  %arr = bitcast i8* %malloccall to i32**
  %a6 = load i32, i32* %a
  %n7 = load i32, i32* %n
  %malloccall.8 = tail call i8* @malloc(i32 mul (i32 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32), i32 2))
  %arr9 = bitcast i8* %malloccall.8 to i32**
  %i10 = load i32, i32* %i
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %i10)
  %c11 = load %arr_note_t*, %arr_note_t** %c
  %d12 = load %arr_note_t*, %arr_note_t** %d
  ret i32 0
}

declare noalias i8* @malloc(i32)

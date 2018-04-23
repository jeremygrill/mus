; ModuleID = 'Mus'

%chord_node = type <{ i32, i32* }>

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [12 x i8] c"(%d,%d|%d)\0A\00"
@fmt.2 = private unnamed_addr constant [14 x i8] c"[(%d,%d|%d)]\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @play(i8*, ...)

define i32 @main() {
entry:
  %i = alloca i32
  %j = alloca i32
  %b = alloca i1
  %a = alloca i32
  %n = alloca i32
  %c = alloca %chord_node*
  %d = alloca %chord_node*
  store i32 1, i32* %i
  store i32 1694629891, i32* %a
  store i32 1778843656, i32* %n
  %c1 = alloca %chord_node*
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2 = bitcast i8* %malloccall to %chord_node*
  store %chord_node* %a2, %chord_node** %c1
  %a3 = load %chord_node*, %chord_node** %c1
  %a4 = getelementptr inbounds %chord_node, %chord_node* %a3, i32 0, i32 0
  %n1 = load i32, i32* %n
  store i32 %n1, i32* %a4
  %a5 = load %chord_node*, %chord_node** %c1
  %a6 = getelementptr inbounds %chord_node, %chord_node* %a5, i32 0, i32 1
  store i32* null, i32** %a6
  %a7 = load %chord_node*, %chord_node** %c1
  %malloccall.2 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a23 = bitcast i8* %malloccall.2 to %chord_node*
  store %chord_node* %a23, %chord_node** %c1
  %a34 = load %chord_node*, %chord_node** %c1
  %a45 = getelementptr inbounds %chord_node, %chord_node* %a34, i32 0, i32 0
  %n6 = load i32, i32* %n
  store i32 %n6, i32* %a45
  %a57 = load %chord_node*, %chord_node** %c1
  %a68 = getelementptr inbounds %chord_node, %chord_node* %a57, i32 0, i32 1
  store i32* %a4, i32** %a68
  %a79 = load %chord_node*, %chord_node** %c1
  %final = load %chord_node*, %chord_node** %c1
  store %chord_node* %final, %chord_node** %c
  %n10 = load i32, i32* %n
  %tmp = sdiv i32 %n10, 16777216
  %tmp11 = and i32 %n10, 16777215
  %tmp12 = sdiv i32 %tmp11, 65536
  %tmp13 = and i32 %n10, 65535
  %printn = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @fmt.1, i32 0, i32 0), i32 %tmp, i32 %tmp12, i32 %tmp13)
  %a14 = load i32, i32* %a
  %tmp15 = sdiv i32 %a14, 16777216
  %tmp16 = and i32 %a14, 16777215
  %tmp17 = sdiv i32 %tmp16, 65536
  %tmp18 = and i32 %a14, 65535
  %printn19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @fmt.1, i32 0, i32 0), i32 %tmp15, i32 %tmp17, i32 %tmp18)
  %b1 = alloca i32
  %tmp20 = alloca %chord_node*
  store i32 0, i32* %b1
  %c21 = load %chord_node*, %chord_node** %c
  store %chord_node* %c21, %chord_node** %tmp20
  %b3 = load %chord_node*, %chord_node** %tmp20
  %b4 = getelementptr inbounds %chord_node, %chord_node* %b3, i32 0, i32 0
  %b5 = load i32, i32* %b4
  %tmp22 = sdiv i32 %b5, 16777216
  %tmp23 = and i32 %b5, 16777215
  %tmp24 = sdiv i32 %tmp23, 65536
  %tmp25 = and i32 %b5, 65535
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @fmt.2, i32 0, i32 0), i32 %tmp22, i32 %tmp24, i32 %tmp25)
  %b7 = load %chord_node*, %chord_node** %tmp20
  ret i32 0
}

declare noalias i8* @malloc(i32)

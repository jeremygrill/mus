; ModuleID = 'Mus'

%chord_node = type <{ i32, %chord_node* }>

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [12 x i8] c"(%d,%d|%d)\0A\00"
@fmt.2 = private unnamed_addr constant [2 x i8] c"[\00"
@fmt.3 = private unnamed_addr constant [11 x i8] c"(%d,%d|%d)\00"
@fmt.4 = private unnamed_addr constant [3 x i8] c"]\0A\00"

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
  store i32 184614923, i32* %a
  store i32 34996226, i32* %n
  %c1 = alloca %chord_node*
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2 = bitcast i8* %malloccall to %chord_node*
  store %chord_node* %a2, %chord_node** %c1
  %a3 = load %chord_node*, %chord_node** %c1
  %a4 = getelementptr inbounds %chord_node, %chord_node* %a3, i32 0, i32 0
  %a1 = load i32, i32* %a
  store i32 %a1, i32* %a4
  %a5 = load %chord_node*, %chord_node** %c1
  %a6 = getelementptr inbounds %chord_node, %chord_node* %a5, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6
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
  store %chord_node* %a3, %chord_node** %a68
  %a79 = load %chord_node*, %chord_node** %c1
  %malloccall.10 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a211 = bitcast i8* %malloccall.10 to %chord_node*
  store %chord_node* %a211, %chord_node** %c1
  %a312 = load %chord_node*, %chord_node** %c1
  %a413 = getelementptr inbounds %chord_node, %chord_node* %a312, i32 0, i32 0
  %a14 = load i32, i32* %a
  store i32 %a14, i32* %a413
  %a515 = load %chord_node*, %chord_node** %c1
  %a616 = getelementptr inbounds %chord_node, %chord_node* %a515, i32 0, i32 1
  store %chord_node* %a34, %chord_node** %a616
  %a717 = load %chord_node*, %chord_node** %c1
  %final = load %chord_node*, %chord_node** %c1
  store %chord_node* %final, %chord_node** %c
  %n18 = load i32, i32* %n
  %tmp = sdiv i32 %n18, 16777216
  %tmp19 = and i32 %n18, 16777215
  %tmp20 = sdiv i32 %tmp19, 65536
  %tmp21 = and i32 %n18, 65535
  %printn = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @fmt.1, i32 0, i32 0), i32 %tmp, i32 %tmp20, i32 %tmp21)
  %a22 = load i32, i32* %a
  %tmp23 = sdiv i32 %a22, 16777216
  %tmp24 = and i32 %a22, 16777215
  %tmp25 = sdiv i32 %tmp24, 65536
  %tmp26 = and i32 %a22, 65535
  %printn27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @fmt.1, i32 0, i32 0), i32 %tmp23, i32 %tmp25, i32 %tmp26)
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @fmt.2, i32 0, i32 0))
  %c28 = load %chord_node*, %chord_node** %c
  %b7 = getelementptr inbounds %chord_node, %chord_node* %c28, i32 0, i32 1
  %b8 = load %chord_node*, %chord_node** %b7
  %b1 = alloca i32
  %tmp29 = alloca %chord_node*
  %c30 = load %chord_node*, %chord_node** %c
  store %chord_node* %c30, %chord_node** %tmp29
  %b3 = load %chord_node*, %chord_node** %tmp29
  %b4 = getelementptr inbounds %chord_node, %chord_node* %b8, i32 0, i32 0
  %b5 = load i32, i32* %b4
  %tmp31 = sdiv i32 %b5, 16777216
  %tmp32 = and i32 %b5, 16777215
  %tmp33 = sdiv i32 %tmp32, 65536
  %tmp34 = and i32 %b5, 65535
  %printf35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @fmt.3, i32 0, i32 0), i32 %tmp31, i32 %tmp33, i32 %tmp34)
  %b736 = load %chord_node*, %chord_node** %tmp29
  %b737 = getelementptr inbounds %chord_node, %chord_node* %b8, i32 0, i32 1
  %b838 = load %chord_node*, %chord_node** %b737
  %b139 = alloca i32
  %tmp40 = alloca %chord_node*
  %c41 = load %chord_node*, %chord_node** %c
  store %chord_node* %c41, %chord_node** %tmp40
  %b342 = load %chord_node*, %chord_node** %tmp40
  %b443 = getelementptr inbounds %chord_node, %chord_node* %b838, i32 0, i32 0
  %b544 = load i32, i32* %b443
  %tmp45 = sdiv i32 %b544, 16777216
  %tmp46 = and i32 %b544, 16777215
  %tmp47 = sdiv i32 %tmp46, 65536
  %tmp48 = and i32 %b544, 65535
  %printf49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @fmt.3, i32 0, i32 0), i32 %tmp45, i32 %tmp47, i32 %tmp48)
  %b750 = load %chord_node*, %chord_node** %tmp40
  %printf51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt.4, i32 0, i32 0))
  ret i32 0
}

declare noalias i8* @malloc(i32)

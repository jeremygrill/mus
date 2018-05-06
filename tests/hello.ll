; ModuleID = 'Mus'

%chord_node = type { i32, %chord_node* }
%seq_node = type { %chord_node*, %seq_node* }

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [12 x i8] c"(%d,%d|%d)\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @printc(%chord_node*)

declare i32 @prints(%seq_node*)

declare i32 @playn(i32)

declare i32 @playc(%chord_node*)

declare i32 @plays(%seq_node*)

define i32 @main() {
entry:
  %a = alloca i32
  %n = alloca i32
  %suh = alloca i32
  %c = alloca %chord_node*
  %d = alloca %chord_node*
  %xx = alloca %chord_node*
  %s = alloca %seq_node*
  store i32 1006698507, i32* %a
  store i32 1073938435, i32* %suh
  store i32 1125515266, i32* %n
  %c1 = alloca %chord_node*
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2 = bitcast i8* %malloccall to %chord_node*
  store %chord_node* %a2, %chord_node** %c1
  %a3 = load %chord_node*, %chord_node** %c1
  %a4 = getelementptr inbounds %chord_node, %chord_node* %a3, i32 0, i32 0
  %suh1 = load i32, i32* %suh
  store i32 %suh1, i32* %a4
  %a5 = load %chord_node*, %chord_node** %c1
  %a6 = getelementptr inbounds %chord_node, %chord_node* %a5, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6
  %a7 = load %chord_node*, %chord_node** %c1
  %c12 = alloca %chord_node*
  %malloccall.3 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a24 = bitcast i8* %malloccall.3 to %chord_node*
  store %chord_node* %a24, %chord_node** %c12
  %a35 = load %chord_node*, %chord_node** %c12
  %a46 = getelementptr inbounds %chord_node, %chord_node* %a35, i32 0, i32 0
  %n7 = load i32, i32* %n
  store i32 %n7, i32* %a46
  %a58 = load %chord_node*, %chord_node** %c12
  %a69 = getelementptr inbounds %chord_node, %chord_node* %a58, i32 0, i32 1
  store %chord_node* %a7, %chord_node** %a69
  %a710 = load %chord_node*, %chord_node** %c12
  %c111 = alloca %chord_node*
  %malloccall.12 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a213 = bitcast i8* %malloccall.12 to %chord_node*
  store %chord_node* %a213, %chord_node** %c111
  %a314 = load %chord_node*, %chord_node** %c111
  %a415 = getelementptr inbounds %chord_node, %chord_node* %a314, i32 0, i32 0
  %a16 = load i32, i32* %a
  store i32 %a16, i32* %a415
  %a517 = load %chord_node*, %chord_node** %c111
  %a618 = getelementptr inbounds %chord_node, %chord_node* %a517, i32 0, i32 1
  store %chord_node* %a710, %chord_node** %a618
  %a719 = load %chord_node*, %chord_node** %c111
  store %chord_node* %a719, %chord_node** %c
  %a20 = load i32, i32* %a
  %c21 = load %chord_node*, %chord_node** %c
  %c22 = load %chord_node*, %chord_node** %c
  %c123 = alloca %chord_node*
  %malloccall.24 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a225 = bitcast i8* %malloccall.24 to %chord_node*
  store %chord_node* %a225, %chord_node** %c123
  %a326 = load %chord_node*, %chord_node** %c123
  %a427 = getelementptr inbounds %chord_node, %chord_node* %a326, i32 0, i32 0
  %a28 = load i32, i32* %a
  store i32 %a28, i32* %a427
  %a529 = load %chord_node*, %chord_node** %c123
  %a630 = getelementptr inbounds %chord_node, %chord_node* %a529, i32 0, i32 1
  store %chord_node* %c22, %chord_node** %a630
  %a731 = load %chord_node*, %chord_node** %c123
  store %chord_node* %a731, %chord_node** %d
  %c32 = load %chord_node*, %chord_node** %c
  %a33 = load i32, i32* %a
  %c34 = load %chord_node*, %chord_node** %c
  %c135 = alloca %chord_node*
  %malloccall.36 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a237 = bitcast i8* %malloccall.36 to %chord_node*
  store %chord_node* %a237, %chord_node** %c135
  %a338 = load %chord_node*, %chord_node** %c135
  %a439 = getelementptr inbounds %chord_node, %chord_node* %a338, i32 0, i32 0
  %a40 = load i32, i32* %a
  store i32 %a40, i32* %a439
  %a541 = load %chord_node*, %chord_node** %c135
  %a642 = getelementptr inbounds %chord_node, %chord_node* %a541, i32 0, i32 1
  store %chord_node* %c34, %chord_node** %a642
  %a743 = load %chord_node*, %chord_node** %c135
  store %chord_node* %a743, %chord_node** %xx
  %c44 = load %chord_node*, %chord_node** %c
  %d45 = load %chord_node*, %chord_node** %d
  %c146 = alloca %seq_node*
  %malloccall.47 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a248 = bitcast i8* %malloccall.47 to %seq_node*
  store %seq_node* %a248, %seq_node** %c146
  %a349 = load %seq_node*, %seq_node** %c146
  %a450 = getelementptr inbounds %seq_node, %seq_node* %a349, i32 0, i32 0
  %c51 = load %chord_node*, %chord_node** %c
  store %chord_node* %c51, %chord_node** %a450
  %a552 = load %seq_node*, %seq_node** %c146
  %a653 = getelementptr inbounds %seq_node, %seq_node* %a552, i32 0, i32 1
  store %seq_node* null, %seq_node** %a653
  %a754 = load %seq_node*, %seq_node** %c146
  %c155 = alloca %seq_node*
  %malloccall.56 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a257 = bitcast i8* %malloccall.56 to %seq_node*
  store %seq_node* %a257, %seq_node** %c155
  %a358 = load %seq_node*, %seq_node** %c155
  %a459 = getelementptr inbounds %seq_node, %seq_node* %a358, i32 0, i32 0
  %d60 = load %chord_node*, %chord_node** %d
  store %chord_node* %d60, %chord_node** %a459
  %a561 = load %seq_node*, %seq_node** %c155
  %a662 = getelementptr inbounds %seq_node, %seq_node* %a561, i32 0, i32 1
  store %seq_node* %a754, %seq_node** %a662
  %a763 = load %seq_node*, %seq_node** %c155
  store %seq_node* %a763, %seq_node** %s
  %c64 = load %chord_node*, %chord_node** %c
  %printc = call i32 @printc(%chord_node* %c64)
  %d65 = load %chord_node*, %chord_node** %d
  %printc66 = call i32 @printc(%chord_node* %d65)
  %xx67 = load %chord_node*, %chord_node** %xx
  %printc68 = call i32 @printc(%chord_node* %xx67)
  %s69 = load %seq_node*, %seq_node** %s
  %prints = call i32 @prints(%seq_node* %s69)
  %s70 = load %seq_node*, %seq_node** %s
  %plays = call i32 @plays(%seq_node* %s70)
  ret i32 0
}

declare noalias i8* @malloc(i32)

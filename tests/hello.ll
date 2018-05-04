; ModuleID = 'Mus'
source_filename = "Mus"

%chord_node = type { i32, %chord_node* }

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [12 x i8] c"(%d,%d|%d)\0A\00"

declare i32 @printf(i8*, ...)

declare i32 @printc(%chord_node*)

declare i32 @play(i32)

define i32 @main() {
entry:
  %a = alloca i32
  %n = alloca i32
  %suh = alloca i32
  %c = alloca %chord_node*
  %d = alloca %chord_node*
  store i32 184614923, i32* %a
  store i32 50528259, i32* %suh
  store i32 34996226, i32* %n
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
  %malloccall3 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a24 = bitcast i8* %malloccall3 to %chord_node*
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
  %malloccall12 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a213 = bitcast i8* %malloccall12 to %chord_node*
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
  %n21 = load i32, i32* %n
  %c122 = alloca %chord_node*
  %malloccall23 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a224 = bitcast i8* %malloccall23 to %chord_node*
  store %chord_node* %a224, %chord_node** %c122
  %a325 = load %chord_node*, %chord_node** %c122
  %a426 = getelementptr inbounds %chord_node, %chord_node* %a325, i32 0, i32 0
  %n27 = load i32, i32* %n
  store i32 %n27, i32* %a426
  %a528 = load %chord_node*, %chord_node** %c122
  %a629 = getelementptr inbounds %chord_node, %chord_node* %a528, i32 0, i32 1
  store %chord_node* null, %chord_node** %a629
  %a730 = load %chord_node*, %chord_node** %c122
  %c131 = alloca %chord_node*
  %malloccall32 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a233 = bitcast i8* %malloccall32 to %chord_node*
  store %chord_node* %a233, %chord_node** %c131
  %a334 = load %chord_node*, %chord_node** %c131
  %a435 = getelementptr inbounds %chord_node, %chord_node* %a334, i32 0, i32 0
  %a36 = load i32, i32* %a
  store i32 %a36, i32* %a435
  %a537 = load %chord_node*, %chord_node** %c131
  %a638 = getelementptr inbounds %chord_node, %chord_node* %a537, i32 0, i32 1
  store %chord_node* %a730, %chord_node** %a638
  %a739 = load %chord_node*, %chord_node** %c131
  store %chord_node* %a739, %chord_node** %d
  %c40 = load %chord_node*, %chord_node** %c
  %printc = call i32 @printc(%chord_node* %c40)
  %d41 = load %chord_node*, %chord_node** %d
  %printc42 = call i32 @printc(%chord_node* %d41)
  %a43 = load i32, i32* %a
  %play = call i32 @play(i32 %a43)
  ret i32 0
}

declare noalias i8* @malloc(i32)

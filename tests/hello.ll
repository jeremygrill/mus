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
  %i = alloca i32
  %j = alloca i32
  %a = alloca i32
  %ab = alloca i32
  %ac = alloca i32
  %ad = alloca i32
  %ae = alloca i32
  %n = alloca i32
  %suh = alloca i32
  %suuuh = alloca i32
  %c = alloca %chord_node*
  %d = alloca %chord_node*
  %ca = alloca %chord_node*
  %xx = alloca %chord_node*
  %s = alloca %seq_node*
  %nextseq = alloca %seq_node*
  store i32 77, i32* %j
  %j1 = load i32, i32* %j
  %tmp = sub i32 %j1, 1
  store i32 %tmp, i32* %j
  store i32 1010827266, i32* %a
  store i32 1044381698, i32* %ab
  store i32 1077936130, i32* %ac
  store i32 1094713346, i32* %ad
  store i32 1128267780, i32* %ae
  store i32 1077936130, i32* %suh
  store i32 1128267778, i32* %n
  store i32 1044381698, i32* %suuuh
  %c1 = alloca %chord_node*
  %malloccall = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2 = bitcast i8* %malloccall to %chord_node*
  store %chord_node* %a2, %chord_node** %c1
  %a3 = load %chord_node*, %chord_node** %c1
  %a4 = getelementptr inbounds %chord_node, %chord_node* %a3, i32 0, i32 0
  %a5 = load i32, i32* %a
  store i32 %a5, i32* %a4
  %a56 = load %chord_node*, %chord_node** %c1
  %a6 = getelementptr inbounds %chord_node, %chord_node* %a56, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6
  %a7 = load %chord_node*, %chord_node** %c1
  %c17 = alloca %chord_node*
  %malloccall.8 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a29 = bitcast i8* %malloccall.8 to %chord_node*
  store %chord_node* %a29, %chord_node** %c17
  %a310 = load %chord_node*, %chord_node** %c17
  %a411 = getelementptr inbounds %chord_node, %chord_node* %a310, i32 0, i32 0
  %n12 = load i32, i32* %n
  store i32 %n12, i32* %a411
  %a513 = load %chord_node*, %chord_node** %c17
  %a614 = getelementptr inbounds %chord_node, %chord_node* %a513, i32 0, i32 1
  store %chord_node* %a7, %chord_node** %a614
  %a715 = load %chord_node*, %chord_node** %c17
  %c116 = alloca %chord_node*
  %malloccall.17 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a218 = bitcast i8* %malloccall.17 to %chord_node*
  store %chord_node* %a218, %chord_node** %c116
  %a319 = load %chord_node*, %chord_node** %c116
  %a420 = getelementptr inbounds %chord_node, %chord_node* %a319, i32 0, i32 0
  %suh21 = load i32, i32* %suh
  store i32 %suh21, i32* %a420
  %a522 = load %chord_node*, %chord_node** %c116
  %a623 = getelementptr inbounds %chord_node, %chord_node* %a522, i32 0, i32 1
  store %chord_node* %a715, %chord_node** %a623
  %a724 = load %chord_node*, %chord_node** %c116
  store %chord_node* %a724, %chord_node** %c
  %suuuh25 = load i32, i32* %suuuh
  %c26 = load %chord_node*, %chord_node** %c
  %c27 = load %chord_node*, %chord_node** %c
  %c128 = alloca %chord_node*
  %malloccall.29 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a230 = bitcast i8* %malloccall.29 to %chord_node*
  store %chord_node* %a230, %chord_node** %c128
  %a331 = load %chord_node*, %chord_node** %c128
  %a432 = getelementptr inbounds %chord_node, %chord_node* %a331, i32 0, i32 0
  %suuuh33 = load i32, i32* %suuuh
  store i32 %suuuh33, i32* %a432
  %a534 = load %chord_node*, %chord_node** %c128
  %a635 = getelementptr inbounds %chord_node, %chord_node* %a534, i32 0, i32 1
  store %chord_node* %c27, %chord_node** %a635
  %a736 = load %chord_node*, %chord_node** %c128
  store %chord_node* %a736, %chord_node** %d
  %a37 = load i32, i32* %a
  %n38 = load i32, i32* %n
  %c139 = alloca %chord_node*
  %malloccall.40 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a241 = bitcast i8* %malloccall.40 to %chord_node*
  store %chord_node* %a241, %chord_node** %c139
  %a342 = load %chord_node*, %chord_node** %c139
  %a443 = getelementptr inbounds %chord_node, %chord_node* %a342, i32 0, i32 0
  %a44 = load i32, i32* %a
  store i32 %a44, i32* %a443
  %a545 = load %chord_node*, %chord_node** %c139
  %a646 = getelementptr inbounds %chord_node, %chord_node* %a545, i32 0, i32 1
  store %chord_node* null, %chord_node** %a646
  %a747 = load %chord_node*, %chord_node** %c139
  %c148 = alloca %chord_node*
  %malloccall.49 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a250 = bitcast i8* %malloccall.49 to %chord_node*
  store %chord_node* %a250, %chord_node** %c148
  %a351 = load %chord_node*, %chord_node** %c148
  %a452 = getelementptr inbounds %chord_node, %chord_node* %a351, i32 0, i32 0
  %n53 = load i32, i32* %n
  store i32 %n53, i32* %a452
  %a554 = load %chord_node*, %chord_node** %c148
  %a655 = getelementptr inbounds %chord_node, %chord_node* %a554, i32 0, i32 1
  store %chord_node* %a747, %chord_node** %a655
  %a756 = load %chord_node*, %chord_node** %c148
  store %chord_node* %a756, %chord_node** %xx
  %c57 = load %chord_node*, %chord_node** %c
  %d58 = load %chord_node*, %chord_node** %d
  %c159 = alloca %seq_node*
  %malloccall.60 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a261 = bitcast i8* %malloccall.60 to %seq_node*
  store %seq_node* %a261, %seq_node** %c159
  %a362 = load %seq_node*, %seq_node** %c159
  %a463 = getelementptr inbounds %seq_node, %seq_node* %a362, i32 0, i32 0
  %c64 = load %chord_node*, %chord_node** %c
  store %chord_node* %c64, %chord_node** %a463
  %a565 = load %seq_node*, %seq_node** %c159
  %a666 = getelementptr inbounds %seq_node, %seq_node* %a565, i32 0, i32 1
  store %seq_node* null, %seq_node** %a666
  %a767 = load %seq_node*, %seq_node** %c159
  %c168 = alloca %seq_node*
  %malloccall.69 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a270 = bitcast i8* %malloccall.69 to %seq_node*
  store %seq_node* %a270, %seq_node** %c168
  %a371 = load %seq_node*, %seq_node** %c168
  %a472 = getelementptr inbounds %seq_node, %seq_node* %a371, i32 0, i32 0
  %d73 = load %chord_node*, %chord_node** %d
  store %chord_node* %d73, %chord_node** %a472
  %a574 = load %seq_node*, %seq_node** %c168
  %a675 = getelementptr inbounds %seq_node, %seq_node* %a574, i32 0, i32 1
  store %seq_node* %a767, %seq_node** %a675
  %a776 = load %seq_node*, %seq_node** %c168
  store %seq_node* %a776, %seq_node** %s
  %s77 = load %seq_node*, %seq_node** %s
  %c178 = alloca %chord_node*
  %malloccall.79 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a280 = bitcast i8* %malloccall.79 to %chord_node*
  store %chord_node* %a280, %chord_node** %c178
  %a381 = load %chord_node*, %chord_node** %c178
  %a482 = getelementptr inbounds %chord_node, %chord_node* %a381, i32 0, i32 0
  %a83 = load i32, i32* %a
  store i32 %a83, i32* %a482
  %a584 = load %chord_node*, %chord_node** %c178
  %a685 = getelementptr inbounds %chord_node, %chord_node* %a584, i32 0, i32 1
  store %chord_node* null, %chord_node** %a685
  %a786 = load %chord_node*, %chord_node** %c178
  %s87 = load %seq_node*, %seq_node** %s
  %c188 = alloca %seq_node*
  %malloccall.89 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a290 = bitcast i8* %malloccall.89 to %seq_node*
  store %seq_node* %a290, %seq_node** %c188
  %a391 = load %seq_node*, %seq_node** %c188
  %a492 = getelementptr inbounds %seq_node, %seq_node* %a391, i32 0, i32 0
  %c193 = alloca %chord_node*
  %malloccall.94 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a295 = bitcast i8* %malloccall.94 to %chord_node*
  store %chord_node* %a295, %chord_node** %c193
  %a396 = load %chord_node*, %chord_node** %c193
  %a497 = getelementptr inbounds %chord_node, %chord_node* %a396, i32 0, i32 0
  %a98 = load i32, i32* %a
  store i32 %a98, i32* %a497
  %a599 = load %chord_node*, %chord_node** %c193
  %a6100 = getelementptr inbounds %chord_node, %chord_node* %a599, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6100
  %a7101 = load %chord_node*, %chord_node** %c193
  store %chord_node* %a7101, %chord_node** %a492
  %a5102 = load %seq_node*, %seq_node** %c188
  %a6103 = getelementptr inbounds %seq_node, %seq_node* %a5102, i32 0, i32 1
  store %seq_node* %s87, %seq_node** %a6103
  %a7104 = load %seq_node*, %seq_node** %c188
  store %seq_node* %a7104, %seq_node** %s
  %c1105 = alloca %seq_node*
  %malloccall.106 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a2107 = bitcast i8* %malloccall.106 to %seq_node*
  store %seq_node* %a2107, %seq_node** %c1105
  %a3108 = load %seq_node*, %seq_node** %c1105
  %a4109 = getelementptr inbounds %seq_node, %seq_node* %a3108, i32 0, i32 0
  %c110 = load %chord_node*, %chord_node** %c
  store %chord_node* %c110, %chord_node** %a4109
  %a5111 = load %seq_node*, %seq_node** %c1105
  %a6112 = getelementptr inbounds %seq_node, %seq_node* %a5111, i32 0, i32 1
  store %seq_node* null, %seq_node** %a6112
  %a7113 = load %seq_node*, %seq_node** %c1105
  %c1114 = alloca %seq_node*
  %malloccall.115 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a2116 = bitcast i8* %malloccall.115 to %seq_node*
  store %seq_node* %a2116, %seq_node** %c1114
  %a3117 = load %seq_node*, %seq_node** %c1114
  %a4118 = getelementptr inbounds %seq_node, %seq_node* %a3117, i32 0, i32 0
  %d119 = load %chord_node*, %chord_node** %d
  store %chord_node* %d119, %chord_node** %a4118
  %a5120 = load %seq_node*, %seq_node** %c1114
  %a6121 = getelementptr inbounds %seq_node, %seq_node* %a5120, i32 0, i32 1
  store %seq_node* %a7113, %seq_node** %a6121
  %a7122 = load %seq_node*, %seq_node** %c1114
  store %seq_node* %a7122, %seq_node** %nextseq
  %c1123 = alloca %chord_node*
  %malloccall.124 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2125 = bitcast i8* %malloccall.124 to %chord_node*
  store %chord_node* %a2125, %chord_node** %c1123
  %a3126 = load %chord_node*, %chord_node** %c1123
  %a4127 = getelementptr inbounds %chord_node, %chord_node* %a3126, i32 0, i32 0
  %a128 = load i32, i32* %a
  store i32 %a128, i32* %a4127
  %a5129 = load %chord_node*, %chord_node** %c1123
  %a6130 = getelementptr inbounds %chord_node, %chord_node* %a5129, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6130
  %a7131 = load %chord_node*, %chord_node** %c1123
  %c1132 = alloca %chord_node*
  %malloccall.133 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2134 = bitcast i8* %malloccall.133 to %chord_node*
  store %chord_node* %a2134, %chord_node** %c1132
  %a3135 = load %chord_node*, %chord_node** %c1132
  %a4136 = getelementptr inbounds %chord_node, %chord_node* %a3135, i32 0, i32 0
  %ab137 = load i32, i32* %ab
  store i32 %ab137, i32* %a4136
  %a5138 = load %chord_node*, %chord_node** %c1132
  %a6139 = getelementptr inbounds %chord_node, %chord_node* %a5138, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6139
  %a7140 = load %chord_node*, %chord_node** %c1132
  %c1141 = alloca %seq_node*
  %malloccall.142 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a2143 = bitcast i8* %malloccall.142 to %seq_node*
  store %seq_node* %a2143, %seq_node** %c1141
  %a3144 = load %seq_node*, %seq_node** %c1141
  %a4145 = getelementptr inbounds %seq_node, %seq_node* %a3144, i32 0, i32 0
  %c1146 = alloca %chord_node*
  %malloccall.147 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2148 = bitcast i8* %malloccall.147 to %chord_node*
  store %chord_node* %a2148, %chord_node** %c1146
  %a3149 = load %chord_node*, %chord_node** %c1146
  %a4150 = getelementptr inbounds %chord_node, %chord_node* %a3149, i32 0, i32 0
  %a151 = load i32, i32* %a
  store i32 %a151, i32* %a4150
  %a5152 = load %chord_node*, %chord_node** %c1146
  %a6153 = getelementptr inbounds %chord_node, %chord_node* %a5152, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6153
  %a7154 = load %chord_node*, %chord_node** %c1146
  store %chord_node* %a7154, %chord_node** %a4145
  %a5155 = load %seq_node*, %seq_node** %c1141
  %a6156 = getelementptr inbounds %seq_node, %seq_node* %a5155, i32 0, i32 1
  store %seq_node* null, %seq_node** %a6156
  %a7157 = load %seq_node*, %seq_node** %c1141
  %c1158 = alloca %seq_node*
  %malloccall.159 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a2160 = bitcast i8* %malloccall.159 to %seq_node*
  store %seq_node* %a2160, %seq_node** %c1158
  %a3161 = load %seq_node*, %seq_node** %c1158
  %a4162 = getelementptr inbounds %seq_node, %seq_node* %a3161, i32 0, i32 0
  %c1163 = alloca %chord_node*
  %malloccall.164 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2165 = bitcast i8* %malloccall.164 to %chord_node*
  store %chord_node* %a2165, %chord_node** %c1163
  %a3166 = load %chord_node*, %chord_node** %c1163
  %a4167 = getelementptr inbounds %chord_node, %chord_node* %a3166, i32 0, i32 0
  %ab168 = load i32, i32* %ab
  store i32 %ab168, i32* %a4167
  %a5169 = load %chord_node*, %chord_node** %c1163
  %a6170 = getelementptr inbounds %chord_node, %chord_node* %a5169, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6170
  %a7171 = load %chord_node*, %chord_node** %c1163
  store %chord_node* %a7171, %chord_node** %a4162
  %a5172 = load %seq_node*, %seq_node** %c1158
  %a6173 = getelementptr inbounds %seq_node, %seq_node* %a5172, i32 0, i32 1
  store %seq_node* %a7157, %seq_node** %a6173
  %a7174 = load %seq_node*, %seq_node** %c1158
  store %seq_node* %a7174, %seq_node** %nextseq
  %nextseq175 = load %seq_node*, %seq_node** %nextseq
  %c1176 = alloca %chord_node*
  %malloccall.177 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2178 = bitcast i8* %malloccall.177 to %chord_node*
  store %chord_node* %a2178, %chord_node** %c1176
  %a3179 = load %chord_node*, %chord_node** %c1176
  %a4180 = getelementptr inbounds %chord_node, %chord_node* %a3179, i32 0, i32 0
  %ac181 = load i32, i32* %ac
  store i32 %ac181, i32* %a4180
  %a5182 = load %chord_node*, %chord_node** %c1176
  %a6183 = getelementptr inbounds %chord_node, %chord_node* %a5182, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6183
  %a7184 = load %chord_node*, %chord_node** %c1176
  %nextseq185 = load %seq_node*, %seq_node** %nextseq
  %c1186 = alloca %seq_node*
  %malloccall.187 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a2188 = bitcast i8* %malloccall.187 to %seq_node*
  store %seq_node* %a2188, %seq_node** %c1186
  %a3189 = load %seq_node*, %seq_node** %c1186
  %a4190 = getelementptr inbounds %seq_node, %seq_node* %a3189, i32 0, i32 0
  %c1191 = alloca %chord_node*
  %malloccall.192 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2193 = bitcast i8* %malloccall.192 to %chord_node*
  store %chord_node* %a2193, %chord_node** %c1191
  %a3194 = load %chord_node*, %chord_node** %c1191
  %a4195 = getelementptr inbounds %chord_node, %chord_node* %a3194, i32 0, i32 0
  %ac196 = load i32, i32* %ac
  store i32 %ac196, i32* %a4195
  %a5197 = load %chord_node*, %chord_node** %c1191
  %a6198 = getelementptr inbounds %chord_node, %chord_node* %a5197, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6198
  %a7199 = load %chord_node*, %chord_node** %c1191
  store %chord_node* %a7199, %chord_node** %a4190
  %a5200 = load %seq_node*, %seq_node** %c1186
  %a6201 = getelementptr inbounds %seq_node, %seq_node* %a5200, i32 0, i32 1
  store %seq_node* %nextseq185, %seq_node** %a6201
  %a7202 = load %seq_node*, %seq_node** %c1186
  store %seq_node* %a7202, %seq_node** %nextseq
  %nextseq203 = load %seq_node*, %seq_node** %nextseq
  %c1204 = alloca %chord_node*
  %malloccall.205 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2206 = bitcast i8* %malloccall.205 to %chord_node*
  store %chord_node* %a2206, %chord_node** %c1204
  %a3207 = load %chord_node*, %chord_node** %c1204
  %a4208 = getelementptr inbounds %chord_node, %chord_node* %a3207, i32 0, i32 0
  %ad209 = load i32, i32* %ad
  store i32 %ad209, i32* %a4208
  %a5210 = load %chord_node*, %chord_node** %c1204
  %a6211 = getelementptr inbounds %chord_node, %chord_node* %a5210, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6211
  %a7212 = load %chord_node*, %chord_node** %c1204
  %nextseq213 = load %seq_node*, %seq_node** %nextseq
  %c1214 = alloca %seq_node*
  %malloccall.215 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a2216 = bitcast i8* %malloccall.215 to %seq_node*
  store %seq_node* %a2216, %seq_node** %c1214
  %a3217 = load %seq_node*, %seq_node** %c1214
  %a4218 = getelementptr inbounds %seq_node, %seq_node* %a3217, i32 0, i32 0
  %c1219 = alloca %chord_node*
  %malloccall.220 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2221 = bitcast i8* %malloccall.220 to %chord_node*
  store %chord_node* %a2221, %chord_node** %c1219
  %a3222 = load %chord_node*, %chord_node** %c1219
  %a4223 = getelementptr inbounds %chord_node, %chord_node* %a3222, i32 0, i32 0
  %ad224 = load i32, i32* %ad
  store i32 %ad224, i32* %a4223
  %a5225 = load %chord_node*, %chord_node** %c1219
  %a6226 = getelementptr inbounds %chord_node, %chord_node* %a5225, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6226
  %a7227 = load %chord_node*, %chord_node** %c1219
  store %chord_node* %a7227, %chord_node** %a4218
  %a5228 = load %seq_node*, %seq_node** %c1214
  %a6229 = getelementptr inbounds %seq_node, %seq_node* %a5228, i32 0, i32 1
  store %seq_node* %nextseq213, %seq_node** %a6229
  %a7230 = load %seq_node*, %seq_node** %c1214
  store %seq_node* %a7230, %seq_node** %nextseq
  %nextseq231 = load %seq_node*, %seq_node** %nextseq
  %c1232 = alloca %chord_node*
  %malloccall.233 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2234 = bitcast i8* %malloccall.233 to %chord_node*
  store %chord_node* %a2234, %chord_node** %c1232
  %a3235 = load %chord_node*, %chord_node** %c1232
  %a4236 = getelementptr inbounds %chord_node, %chord_node* %a3235, i32 0, i32 0
  %ae237 = load i32, i32* %ae
  store i32 %ae237, i32* %a4236
  %a5238 = load %chord_node*, %chord_node** %c1232
  %a6239 = getelementptr inbounds %chord_node, %chord_node* %a5238, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6239
  %a7240 = load %chord_node*, %chord_node** %c1232
  %nextseq241 = load %seq_node*, %seq_node** %nextseq
  %c1242 = alloca %seq_node*
  %malloccall.243 = tail call i8* @malloc(i32 trunc (i64 mul nuw (i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2) to i32))
  %a2244 = bitcast i8* %malloccall.243 to %seq_node*
  store %seq_node* %a2244, %seq_node** %c1242
  %a3245 = load %seq_node*, %seq_node** %c1242
  %a4246 = getelementptr inbounds %seq_node, %seq_node* %a3245, i32 0, i32 0
  %c1247 = alloca %chord_node*
  %malloccall.248 = tail call i8* @malloc(i32 ptrtoint (%chord_node* getelementptr (%chord_node, %chord_node* null, i32 1) to i32))
  %a2249 = bitcast i8* %malloccall.248 to %chord_node*
  store %chord_node* %a2249, %chord_node** %c1247
  %a3250 = load %chord_node*, %chord_node** %c1247
  %a4251 = getelementptr inbounds %chord_node, %chord_node* %a3250, i32 0, i32 0
  %ae252 = load i32, i32* %ae
  store i32 %ae252, i32* %a4251
  %a5253 = load %chord_node*, %chord_node** %c1247
  %a6254 = getelementptr inbounds %chord_node, %chord_node* %a5253, i32 0, i32 1
  store %chord_node* null, %chord_node** %a6254
  %a7255 = load %chord_node*, %chord_node** %c1247
  store %chord_node* %a7255, %chord_node** %a4246
  %a5256 = load %seq_node*, %seq_node** %c1242
  %a6257 = getelementptr inbounds %seq_node, %seq_node* %a5256, i32 0, i32 1
  store %seq_node* %nextseq241, %seq_node** %a6257
  %a7258 = load %seq_node*, %seq_node** %c1242
  store %seq_node* %a7258, %seq_node** %nextseq
  %j259 = load i32, i32* %j
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt, i32 0, i32 0), i32 %j259)
  %c260 = load %chord_node*, %chord_node** %c
  %printc = call i32 @printc(%chord_node* %c260)
  %d261 = load %chord_node*, %chord_node** %d
  %printc262 = call i32 @printc(%chord_node* %d261)
  %xx263 = load %chord_node*, %chord_node** %xx
  %printc264 = call i32 @printc(%chord_node* %xx263)
  %s265 = load %seq_node*, %seq_node** %s
  %prints = call i32 @prints(%seq_node* %s265)
  %nextseq266 = load %seq_node*, %seq_node** %nextseq
  %prints267 = call i32 @prints(%seq_node* %nextseq266)
  %nextseq268 = load %seq_node*, %seq_node** %nextseq
  %plays = call i32 @plays(%seq_node* %nextseq268)
  ret i32 0
}

declare noalias i8* @malloc(i32)

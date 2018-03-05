(* ejo2117 *)

type op = Add | Sub | Mult | Div | Greater | Geq | Less | Leq | Eq | Neq | Comma | Land | Lor

type unop = Neg | Not | Incr | Dec

type typ = Int | Bool | Note | Chord | Seq | String

type bind = typ * string

type expr =
	  IntLit of int
	| BoolLit of bool
	| NoteLit of expr * expr * expr
	| ChordLit of expr list
	| SeqLit of expr list
	| StringLit of string
	| Binop of expr * op * expr
	| Unop of unop * expr
	| Variable of string
	| Asn of string * expr
	| Call of string * expr list
	| Noexpr

type stmt =
    Block of stmt list
  | Expr of expr
  | Return of expr
  | Play of expr
  | Func of expr 
  | Print of expr
  | If of expr * stmt * stmt
  | For of expr * expr * expr * stmt
  | While of expr * stmt



let string_of_op = function
    Add -> "+"
  | Sub -> "-"
  | Mult -> "*"
  | Div -> "/"
  | Eq -> "=="
  | Neq -> "!="
  | Less -> "<"
  | Leq -> "<="
  | Greater -> ">"
  | Geq -> ">="
  | Land -> "&&"
  | Lor -> "||"
  | Comma -> ","

let string_of_unop = function
    Neg -> "-"
  | Not -> "!"
  | Incr -> "++"
  | Dec -> "--"

let rec string_of_expr = function
    IntLit(l) -> string_of_int l
  | BoolLit(true) -> "true"
  | BoolLit(false) -> "false"
  | Variable(s) -> s
  | Binop(e1, o, e2) ->
      string_of_expr e1 ^ " " ^ string_of_op o ^ " " ^ string_of_expr e2
  | Unop(o, e) -> string_of_unop o ^ string_of_expr e
  | Asn(v, e) -> v ^ " = " ^ string_of_expr e
  | Call(f, el) ->
      f ^ "(" ^ String.concat ", " (List.map string_of_expr el) ^ ")"
  | Noexpr -> ""
  | NoteLit(e1, e2, e3) -> "(" ^ string_of_expr e1 ^ ", " ^ string_of_expr e2 ^ " | " ^ string_of_expr e3 ^ ")"
  | ChordLit(e1) -> "Chord"
  | SeqLit(e1) -> "Seq"
  | StringLit(e1) -> e1


let rec string_of_stmt = function
    Block(stmts) ->
      "{\n" ^ String.concat "" (List.map string_of_stmt stmts) ^ "}\n"
  | Expr(expr) -> string_of_expr expr ^ ";\n";
  | Return(expr) -> "return " ^ string_of_expr expr ^ ";\n";
  | Play(expr) -> "play " ^ string_of_expr expr ^ ";\n";
  | Func(expr) -> "func " ^ string_of_expr expr ^ ";\n";
  | Print(expr) -> "print " ^ string_of_expr expr ^ ";\n";
  | If(e, s, Block([])) -> "if (" ^ string_of_expr e ^ ")\n" ^ string_of_stmt s
  | If(e, s1, s2) ->  "if (" ^ string_of_expr e ^ ")\n" ^
      string_of_stmt s1 ^ "else\n" ^ string_of_stmt s2
  | For(e1, e2, e3, s) ->
      "for (" ^ string_of_expr e1  ^ " ; " ^ string_of_expr e2 ^ " ; " ^
      string_of_expr e3  ^ ") " ^ string_of_stmt s
  | While(e, s) -> "while (" ^ string_of_expr e ^ ") " ^ string_of_stmt s



let string_of_typ = function
    Int -> "Int"
  | Bool -> "Bool"
  | Note -> "Note"
  | Chord -> "Chord"
  | Seq -> "Seq"
  | String -> "String"

let string_of_vdecl (t, variable) = string_of_typ t ^ " " ^ variable ^ ";\n"

type func_decl = {
	typ	: typ;
	fname	: string;
	formals : bind list;
	locals  : bind list;
	body	: stmt list;
}

let string_of_fdecl fdecl =
  string_of_typ fdecl.typ ^ " " ^
  fdecl.fname ^ "(" ^ String.concat ", " (List.map snd fdecl.formals) ^
  ")\n{\n" ^
  String.concat "" (List.map string_of_vdecl fdecl.locals) ^
  String.concat "" (List.map string_of_stmt fdecl.body) ^
  "}\n"

let string_of_program (vars, funcs) =
  String.concat "" (List.map string_of_vdecl vars) ^ "\n" ^
  String.concat "\n" (List.map string_of_fdecl funcs)
	 


type program = bind list * func_decl list 
	

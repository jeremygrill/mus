/* parser file--test */

%{ open Ast %}

%token LT GT LEQ GEQ NEG LAND LOR LBRACE RBRACE LINE LSQUARE RSQUARE LSEQ 
%token PLUS MINUS TIMES DIVIDE INCR DEC
%token EOF COMMA ASSIGN LPAREN RPAREN
%token LBRACKET RBRACKET INT BOOL NOTE STRING
%token CHORD SEQ RETURN IF
%token <int> INTLIT 
%token <bool> BOOLLIT 
%token <string> STRINGLIT 
%token <string> VARIABLE
%token NOELSE ELSE WHILE FUNC FOR 
%token PLAY PRINT
%token EQUALS NEQUALS SEMI

%start program
%type <Ast.program> program

%nonassoc NOELSE
%nonassoc ELSE
%left COMMA
%right ASSIGN
%left LAND LOR
%left EQUALS NEQUALS
%left LT GT LEQ GEQ
%left PLUS MINUS
%left TIMES DIVIDE
%right INCR DEC
%right NEG

%%

program: 
  decls EOF { $1 }

decls:
   /* nothing */ { ([], [])               }
 | decls vdecl { (($2 :: fst $1), snd $1) }
 | decls fdecl { (fst $1, ($2 :: snd $1)) }

fdecl:
   typ VARIABLE LPAREN formals_opt RPAREN LBRACE vdecl_list stmt_list RBRACE
     { { typ = $1;
	 fname = $2;
	 formals = $4;
	 locals = List.rev $7;
	 body = List.rev $8 } }

formals_opt:
    /* nothing */ { [] }
  | formal_list   { List.rev $1 }

formal_list:
    typ VARIABLE                   { [($1,$2)]     }
  | formal_list COMMA typ VARIABLE { ($3,$4) :: $1 }

typ:
    INT    { Int    }
  | BOOL   { Bool   }
  | NOTE   { Note   }
  | CHORD  { Chord  }
  | SEQ    { Seq    }
  | STRING { String }

vdecl_list:
    /* nothing */    { [] }
  | vdecl_list vdecl { $2 :: $1 }

vdecl:
   typ VARIABLE SEMI { ($1, $2) }

stmt_list:
    /* nothing */  { [] }
  | stmt_list stmt { $2 :: $1 }

stmt:
  LBRACE stmt_list RBRACE   { Block(List.rev $2) }
| expr SEMI                 { Expr $1 }
| RETURN expr SEMI          { Return $2 }
| PLAY LPAREN expr RPAREN SEMI   { Play $3 }
| FUNC LPAREN expr RPAREN SEMI   { Func $3 }
| PRINT LPAREN expr RPAREN SEMI  { Print $3 }
| IF LPAREN expr RPAREN stmt %prec NOELSE { If($3, $5, Block([])) }
| IF LPAREN expr RPAREN stmt ELSE stmt { If($3, $5, $7) }
| FOR LPAREN expr_opt SEMI expr SEMI expr_opt RPAREN stmt { For($3, $5, $7, $9) }
| WHILE LPAREN expr RPAREN stmt { While($3, $5) }

expr_opt:
    /* nothing */ { Noexpr }
  | expr          { $1 }

expr:
  INTLIT                { IntLit($1) }
| BOOLLIT               { BoolLit($1) }
| STRINGLIT             { StringLit($1) }
| VARIABLE              { Variable($1) }
| expr PLUS expr        { Binop($1, Add, $3) }
| expr MINUS expr       { Binop($1, Sub, $3) }
| expr TIMES expr       { Binop($1, Mult, $3) }
| expr DIVIDE expr      { Binop($1, Div, $3) }
| expr COMMA expr       { Binop($1, Comma, $3) }
| VARIABLE ASSIGN expr  { Asn($1, $3) }
| expr NEQUALS expr     { Binop($1, Neq, $3) }
| expr EQUALS expr      { Binop($1, Eq, $3) }
| INCR expr             { Unop(Incr, $2) }
| DEC expr              { Unop(Dec, $2) }
| NEG expr              { Unop(Neg, $2) }
| expr LAND expr        { Binop($1, Land, $3) }
| expr LOR expr         { Binop($1, Lor, $3) }
| expr LT expr          { Binop($1, Less, $3) }
| expr GT expr          { Binop($1, Greater, $3) }
| expr LEQ expr         { Binop($1, Leq, $3) }
| expr GEQ expr         { Binop($1, Geq, $3) }
| LPAREN expr RPAREN    { $2 }
| LPAREN expr COMMA expr LINE expr RPAREN { NoteLit($2, $4, $6) }
| LSQUARE args_opt RSQUARE  { ChordLit($2) }
| LSEQ LPAREN args_opt RPAREN    { SeqLit($3) }


args_opt:
    /* nothing */ { [] }
  | args_list  { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list expr { $2 :: $1 }

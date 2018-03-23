type token =
  | LT
  | GT
  | LEQ
  | GEQ
  | NEG
  | LAND
  | LOR
  | LBRACE
  | RBRACE
  | LINE
  | LSQUARE
  | RSQUARE
  | LSEQ
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | INCR
  | DEC
  | EOF
  | COMMA
  | ASSIGN
  | LPAREN
  | RPAREN
  | LBRACKET
  | RBRACKET
  | INT
  | BOOL
  | NOTE
  | STRING
  | CHORD
  | SEQ
  | RETURN
  | IF
  | INTLIT of (int)
  | BOOLLIT of (bool)
  | STRINGLIT of (string)
  | VARIABLE of (string)
  | NOELSE
  | ELSE
  | WHILE
  | FUNC
  | FOR
  | PLAY
  | PRINT
  | EQUALS
  | NEQUALS
  | SEMI

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program

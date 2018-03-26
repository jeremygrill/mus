(* scanner file *)

{ open Parser }

let digit = ['0' - '9']
let digits = digit+

rule tokenize = parse
[' ' '\t' '\r' '\n'] { tokenize lexbuf }
| "//" { comment lexbuf }
| '+' { PLUS }
| '-' { MINUS }
| '*' { TIMES }
| '/' { DIVIDE }
| ',' { COMMA }
| '=' { ASSIGN }
| '$' { LSEQ }
| "!=" { NEQUALS }
| "==" { EQUALS }
| "++" { INCR }
| "--" { DEC }
| '!' { NEG }
| "&&" { LAND }
| "||" { LOR }
| '<' { LT }
| '>' { GT }
| "<=" { LEQ }
| ">=" { GEQ }
| '|' { LINE }
| '[' { LSQUARE }
| ']' { RSQUARE }
| '(' { LPAREN }
| ')' { RPAREN }
| '{' { LBRACE }
| '}' { RBRACE }
| ';' { SEMI }
| "Int" { INT }
| "Bool" { BOOL }
| "Note" { NOTE }
| "Chord" { CHORD }
| "Seq" { SEQ }
| "String" { STRING }
| "return" { RETURN }
| "if" { IF }
| "else" { ELSE }
| "while" { WHILE }
| "for" { FOR }
| "func" { FUNC }
| "play" { PLAY }
| "print" { PRINT }
| digits as lit { INTLIT(int_of_string lit) }
| eof { EOF }
| ['a'-'z']+ as var { ID(var) }

and comment = parse
'\n' { tokenize lexbuf }
| _ { comment lexbuf }



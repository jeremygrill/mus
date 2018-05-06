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
  | QUOTE
  | TRUE
  | FALSE
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
  | ID of (string)
  | NOELSE
  | ELSE
  | WHILE
  | FUNC
  | FOR
  | PLAY
  | EQUALS
  | NEQUALS
  | SEMI

open Parsing;;
let _ = parse_error;;
# 3 "parser.mly"
 open Ast 
# 58 "parser.ml"
let yytransl_const = [|
  257 (* LT *);
  258 (* GT *);
  259 (* LEQ *);
  260 (* GEQ *);
  261 (* NEG *);
  262 (* LAND *);
  263 (* LOR *);
  264 (* LBRACE *);
  265 (* RBRACE *);
  266 (* LINE *);
  267 (* LSQUARE *);
  268 (* RSQUARE *);
  269 (* LSEQ *);
  270 (* QUOTE *);
  271 (* TRUE *);
  272 (* FALSE *);
  273 (* PLUS *);
  274 (* MINUS *);
  275 (* TIMES *);
  276 (* DIVIDE *);
  277 (* INCR *);
  278 (* DEC *);
    0 (* EOF *);
  279 (* COMMA *);
  280 (* ASSIGN *);
  281 (* LPAREN *);
  282 (* RPAREN *);
  283 (* LBRACKET *);
  284 (* RBRACKET *);
  285 (* INT *);
  286 (* BOOL *);
  287 (* NOTE *);
  288 (* STRING *);
  289 (* CHORD *);
  290 (* SEQ *);
  291 (* RETURN *);
  292 (* IF *);
  297 (* NOELSE *);
  298 (* ELSE *);
  299 (* WHILE *);
  300 (* FUNC *);
  301 (* FOR *);
  302 (* PLAY *);
  303 (* EQUALS *);
  304 (* NEQUALS *);
  305 (* SEMI *);
    0|]

let yytransl_block = [|
  293 (* INTLIT *);
  294 (* BOOLLIT *);
  295 (* STRINGLIT *);
  296 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\005\000\007\000\
\007\000\003\000\008\000\008\000\010\000\010\000\010\000\010\000\
\010\000\010\000\010\000\010\000\012\000\012\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\013\000\013\000\014\000\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\001\000\000\000\
\002\000\003\000\000\000\002\000\003\000\002\000\003\000\005\000\
\005\000\007\000\009\000\005\000\000\000\001\000\001\000\001\000\
\001\000\001\000\003\000\003\000\003\000\003\000\003\000\004\000\
\003\000\003\000\002\000\002\000\002\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\007\000\003\000\004\000\003\000\
\001\000\001\000\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\063\000\000\000\001\000\010\000\011\000\012\000\
\015\000\013\000\014\000\003\000\004\000\000\000\000\000\000\000\
\018\000\000\000\000\000\000\000\008\000\000\000\000\000\016\000\
\000\000\000\000\009\000\017\000\000\000\000\000\000\000\000\000\
\019\000\005\000\000\000\000\000\000\000\057\000\058\000\000\000\
\000\000\000\000\000\000\000\000\031\000\032\000\033\000\000\000\
\000\000\000\000\000\000\020\000\000\000\045\000\000\000\000\000\
\000\000\000\000\000\000\043\000\044\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\022\000\021\000\054\000\000\000\000\000\000\000\056\000\
\000\000\052\000\023\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\037\000\038\000\000\000\000\000\000\000\055\000\
\000\000\000\000\040\000\000\000\000\000\000\000\000\000\000\000\
\028\000\000\000\024\000\000\000\000\000\000\000\053\000\026\000\
\000\000\000\000\027\000"

let yydgoto = "\002\000\
\003\000\004\000\012\000\013\000\014\000\019\000\026\000\030\000\
\020\000\052\000\053\000\097\000\086\000\087\000"

let yysindex = "\014\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\233\254\237\254\159\255\
\000\000\240\254\003\255\008\255\000\000\042\255\159\255\000\000\
\012\255\159\255\000\000\000\000\015\255\063\001\013\255\252\001\
\000\000\000\000\252\001\041\255\252\001\000\000\000\000\252\001\
\252\001\252\001\252\001\043\255\000\000\000\000\000\000\254\254\
\047\255\048\255\056\255\000\000\255\255\000\000\102\001\001\001\
\246\254\252\001\104\000\000\000\000\000\072\000\019\000\252\001\
\252\001\252\001\252\001\252\001\252\001\252\001\252\001\252\001\
\252\001\252\001\252\001\252\001\252\001\252\001\252\001\252\001\
\252\001\000\000\000\000\000\000\252\001\063\255\068\255\000\000\
\252\001\000\000\000\000\124\000\001\001\066\255\156\000\001\001\
\044\255\182\000\126\255\126\255\126\255\126\255\176\000\176\000\
\000\255\000\255\000\000\000\000\136\000\136\000\001\001\000\000\
\208\000\216\001\000\000\216\001\252\001\052\255\252\001\054\255\
\000\000\052\000\000\000\231\000\216\001\252\001\000\000\000\000\
\077\255\216\001\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\085\255\
\000\000\000\000\000\000\088\255\000\000\000\000\000\000\000\000\
\000\000\141\001\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\057\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\251\254\
\000\000\089\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\089\255\000\000\070\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\091\255\000\000\
\000\000\000\000\000\000\000\000\002\255\000\000\000\000\234\254\
\000\000\000\000\155\255\173\255\204\255\222\255\072\255\033\001\
\106\255\124\255\000\000\000\000\003\001\018\001\076\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\180\001\
\000\000\000\000\000\000\000\000\000\000\096\255\000\000\000\000\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\107\000\000\000\074\000\000\000\000\000\102\000\
\000\000\196\255\224\255\011\000\073\000\105\000"

let yytablesize = 804
let yytable = "\054\000\
\005\000\084\000\056\000\030\000\059\000\016\000\061\000\060\000\
\061\000\062\000\063\000\039\000\085\000\039\000\001\000\039\000\
\015\000\061\000\078\000\079\000\061\000\065\000\066\000\021\000\
\039\000\056\000\030\000\039\000\022\000\017\000\023\000\092\000\
\093\000\056\000\095\000\096\000\098\000\099\000\100\000\101\000\
\102\000\103\000\104\000\105\000\106\000\107\000\108\000\109\000\
\110\000\024\000\039\000\027\000\111\000\120\000\031\000\121\000\
\113\000\034\000\034\000\034\000\034\000\017\000\034\000\034\000\
\128\000\058\000\034\000\064\000\034\000\131\000\034\000\067\000\
\068\000\034\000\034\000\034\000\034\000\046\000\046\000\034\000\
\069\000\046\000\034\000\046\000\122\000\046\000\124\000\062\000\
\112\000\018\000\085\000\115\000\117\000\096\000\046\000\125\000\
\025\000\046\000\062\000\029\000\123\000\062\000\130\000\034\000\
\034\000\034\000\035\000\035\000\035\000\035\000\006\000\035\000\
\035\000\007\000\059\000\035\000\060\000\035\000\029\000\035\000\
\046\000\029\000\035\000\035\000\036\000\036\000\036\000\036\000\
\035\000\036\000\036\000\035\000\028\000\036\000\055\000\036\000\
\129\000\036\000\094\000\057\000\036\000\036\000\076\000\077\000\
\078\000\079\000\036\000\000\000\000\000\036\000\000\000\000\000\
\035\000\035\000\035\000\048\000\048\000\048\000\048\000\000\000\
\048\000\048\000\000\000\000\000\048\000\000\000\048\000\000\000\
\048\000\000\000\036\000\036\000\036\000\049\000\049\000\049\000\
\049\000\048\000\049\000\049\000\048\000\000\000\049\000\000\000\
\049\000\000\000\049\000\006\000\007\000\008\000\009\000\010\000\
\011\000\000\000\000\000\049\000\000\000\000\000\049\000\000\000\
\000\000\048\000\048\000\048\000\050\000\050\000\050\000\050\000\
\000\000\050\000\050\000\000\000\000\000\050\000\000\000\050\000\
\000\000\050\000\000\000\049\000\049\000\049\000\051\000\051\000\
\051\000\051\000\050\000\051\000\051\000\050\000\000\000\051\000\
\000\000\051\000\000\000\051\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\051\000\000\000\000\000\051\000\
\000\000\000\000\050\000\050\000\050\000\000\000\000\000\070\000\
\071\000\072\000\073\000\000\000\074\000\075\000\000\000\000\000\
\000\000\000\000\000\000\000\000\051\000\051\000\051\000\076\000\
\077\000\078\000\079\000\070\000\071\000\072\000\073\000\000\000\
\074\000\075\000\000\000\000\000\000\000\006\000\007\000\008\000\
\009\000\010\000\011\000\076\000\077\000\078\000\079\000\000\000\
\000\000\000\000\000\000\000\000\000\000\080\000\081\000\082\000\
\000\000\000\000\000\000\000\000\070\000\071\000\072\000\073\000\
\000\000\074\000\075\000\000\000\000\000\000\000\000\000\000\000\
\000\000\080\000\081\000\091\000\076\000\077\000\078\000\079\000\
\070\000\071\000\072\000\073\000\000\000\074\000\075\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\076\000\077\000\078\000\079\000\000\000\000\000\089\000\000\000\
\000\000\090\000\080\000\081\000\126\000\000\000\000\000\000\000\
\070\000\071\000\072\000\073\000\000\000\074\000\075\000\000\000\
\000\000\000\000\000\000\000\000\000\000\088\000\080\000\081\000\
\076\000\077\000\078\000\079\000\070\000\071\000\072\000\073\000\
\000\000\074\000\075\000\000\000\000\000\000\000\000\000\000\000\
\070\000\071\000\072\000\073\000\076\000\077\000\078\000\079\000\
\000\000\000\000\000\000\000\000\000\000\114\000\080\000\081\000\
\076\000\077\000\078\000\079\000\070\000\071\000\072\000\073\000\
\000\000\074\000\075\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\080\000\081\000\076\000\077\000\078\000\079\000\
\070\000\071\000\072\000\073\000\000\000\116\000\070\000\071\000\
\072\000\073\000\000\000\074\000\075\000\000\000\000\000\000\000\
\076\000\077\000\078\000\079\000\000\000\000\000\076\000\077\000\
\078\000\079\000\080\000\081\000\000\000\000\000\000\000\118\000\
\070\000\071\000\072\000\073\000\000\000\074\000\075\000\000\000\
\000\000\119\000\000\000\000\000\000\000\000\000\080\000\081\000\
\076\000\077\000\078\000\079\000\080\000\081\000\000\000\070\000\
\071\000\072\000\073\000\000\000\074\000\075\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\076\000\
\077\000\078\000\079\000\000\000\000\000\000\000\080\000\081\000\
\127\000\070\000\071\000\072\000\073\000\000\000\074\000\075\000\
\042\000\042\000\000\000\000\000\042\000\000\000\042\000\000\000\
\042\000\076\000\077\000\078\000\079\000\080\000\081\000\041\000\
\041\000\042\000\000\000\041\000\042\000\041\000\000\000\041\000\
\000\000\000\000\000\000\000\000\000\000\000\000\047\000\047\000\
\041\000\000\000\047\000\041\000\047\000\000\000\047\000\080\000\
\081\000\042\000\042\000\042\000\000\000\000\000\000\000\047\000\
\000\000\000\000\047\000\000\000\000\000\000\000\000\000\000\000\
\041\000\041\000\041\000\032\000\000\000\000\000\033\000\034\000\
\000\000\035\000\000\000\036\000\037\000\038\000\039\000\000\000\
\000\000\047\000\000\000\040\000\041\000\000\000\000\000\042\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\043\000\044\000\045\000\046\000\047\000\048\000\000\000\
\000\000\049\000\032\000\050\000\051\000\033\000\083\000\000\000\
\035\000\000\000\036\000\037\000\038\000\039\000\000\000\000\000\
\000\000\000\000\040\000\041\000\000\000\000\000\042\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\043\000\044\000\045\000\046\000\047\000\048\000\000\000\000\000\
\049\000\019\000\050\000\051\000\019\000\019\000\000\000\019\000\
\000\000\019\000\019\000\019\000\019\000\000\000\000\000\000\000\
\000\000\019\000\019\000\000\000\000\000\019\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\019\000\
\019\000\019\000\019\000\019\000\019\000\000\000\000\000\019\000\
\025\000\019\000\019\000\025\000\025\000\000\000\025\000\000\000\
\025\000\025\000\025\000\025\000\000\000\000\000\000\000\000\000\
\025\000\025\000\000\000\000\000\025\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\025\000\025\000\
\025\000\025\000\025\000\025\000\032\000\000\000\025\000\033\000\
\025\000\025\000\035\000\000\000\036\000\037\000\038\000\039\000\
\000\000\000\000\000\000\000\000\040\000\041\000\000\000\000\000\
\042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\043\000\044\000\045\000\046\000\047\000\048\000\
\032\000\000\000\049\000\000\000\050\000\051\000\035\000\000\000\
\036\000\037\000\038\000\039\000\000\000\000\000\000\000\000\000\
\040\000\041\000\000\000\000\000\042\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\045\000\046\000\047\000\048\000"

let yycheck = "\032\000\
\000\000\012\001\035\000\026\001\037\000\025\001\012\001\040\000\
\041\000\042\000\043\000\010\001\023\001\012\001\001\000\014\001\
\040\001\023\001\019\001\020\001\026\001\024\001\025\001\040\001\
\023\001\058\000\049\001\026\001\026\001\049\001\023\001\064\000\
\065\000\066\000\067\000\068\000\069\000\070\000\071\000\072\000\
\073\000\074\000\075\000\076\000\077\000\078\000\079\000\080\000\
\081\000\008\001\049\001\040\001\085\000\114\000\040\001\116\000\
\089\000\001\001\002\001\003\001\004\001\049\001\006\001\007\001\
\125\000\025\001\010\001\025\001\012\001\130\000\014\001\025\001\
\025\001\017\001\018\001\019\001\020\001\006\001\007\001\023\001\
\025\001\010\001\026\001\012\001\117\000\014\001\119\000\012\001\
\026\001\016\000\023\001\026\001\049\001\126\000\023\001\042\001\
\023\000\026\001\023\001\026\000\049\001\026\001\026\001\047\001\
\048\001\049\001\001\001\002\001\003\001\004\001\026\001\006\001\
\007\001\026\001\026\001\010\001\026\001\012\001\049\001\014\001\
\049\001\026\001\017\001\018\001\001\001\002\001\003\001\004\001\
\023\001\006\001\007\001\026\001\026\000\010\001\033\000\012\001\
\126\000\014\001\066\000\035\000\017\001\018\001\017\001\018\001\
\019\001\020\001\023\001\255\255\255\255\026\001\255\255\255\255\
\047\001\048\001\049\001\001\001\002\001\003\001\004\001\255\255\
\006\001\007\001\255\255\255\255\010\001\255\255\012\001\255\255\
\014\001\255\255\047\001\048\001\049\001\001\001\002\001\003\001\
\004\001\023\001\006\001\007\001\026\001\255\255\010\001\255\255\
\012\001\255\255\014\001\029\001\030\001\031\001\032\001\033\001\
\034\001\255\255\255\255\023\001\255\255\255\255\026\001\255\255\
\255\255\047\001\048\001\049\001\001\001\002\001\003\001\004\001\
\255\255\006\001\007\001\255\255\255\255\010\001\255\255\012\001\
\255\255\014\001\255\255\047\001\048\001\049\001\001\001\002\001\
\003\001\004\001\023\001\006\001\007\001\026\001\255\255\010\001\
\255\255\012\001\255\255\014\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\023\001\255\255\255\255\026\001\
\255\255\255\255\047\001\048\001\049\001\255\255\255\255\001\001\
\002\001\003\001\004\001\255\255\006\001\007\001\255\255\255\255\
\255\255\255\255\255\255\255\255\047\001\048\001\049\001\017\001\
\018\001\019\001\020\001\001\001\002\001\003\001\004\001\255\255\
\006\001\007\001\255\255\255\255\255\255\029\001\030\001\031\001\
\032\001\033\001\034\001\017\001\018\001\019\001\020\001\255\255\
\255\255\255\255\255\255\255\255\255\255\047\001\048\001\049\001\
\255\255\255\255\255\255\255\255\001\001\002\001\003\001\004\001\
\255\255\006\001\007\001\255\255\255\255\255\255\255\255\255\255\
\255\255\047\001\048\001\049\001\017\001\018\001\019\001\020\001\
\001\001\002\001\003\001\004\001\255\255\006\001\007\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\017\001\018\001\019\001\020\001\255\255\255\255\023\001\255\255\
\255\255\026\001\047\001\048\001\049\001\255\255\255\255\255\255\
\001\001\002\001\003\001\004\001\255\255\006\001\007\001\255\255\
\255\255\255\255\255\255\255\255\255\255\014\001\047\001\048\001\
\017\001\018\001\019\001\020\001\001\001\002\001\003\001\004\001\
\255\255\006\001\007\001\255\255\255\255\255\255\255\255\255\255\
\001\001\002\001\003\001\004\001\017\001\018\001\019\001\020\001\
\255\255\255\255\255\255\255\255\255\255\026\001\047\001\048\001\
\017\001\018\001\019\001\020\001\001\001\002\001\003\001\004\001\
\255\255\006\001\007\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\047\001\048\001\017\001\018\001\019\001\020\001\
\001\001\002\001\003\001\004\001\255\255\026\001\001\001\002\001\
\003\001\004\001\255\255\006\001\007\001\255\255\255\255\255\255\
\017\001\018\001\019\001\020\001\255\255\255\255\017\001\018\001\
\019\001\020\001\047\001\048\001\255\255\255\255\255\255\026\001\
\001\001\002\001\003\001\004\001\255\255\006\001\007\001\255\255\
\255\255\010\001\255\255\255\255\255\255\255\255\047\001\048\001\
\017\001\018\001\019\001\020\001\047\001\048\001\255\255\001\001\
\002\001\003\001\004\001\255\255\006\001\007\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\017\001\
\018\001\019\001\020\001\255\255\255\255\255\255\047\001\048\001\
\026\001\001\001\002\001\003\001\004\001\255\255\006\001\007\001\
\006\001\007\001\255\255\255\255\010\001\255\255\012\001\255\255\
\014\001\017\001\018\001\019\001\020\001\047\001\048\001\006\001\
\007\001\023\001\255\255\010\001\026\001\012\001\255\255\014\001\
\255\255\255\255\255\255\255\255\255\255\255\255\006\001\007\001\
\023\001\255\255\010\001\026\001\012\001\255\255\014\001\047\001\
\048\001\047\001\048\001\049\001\255\255\255\255\255\255\023\001\
\255\255\255\255\026\001\255\255\255\255\255\255\255\255\255\255\
\047\001\048\001\049\001\005\001\255\255\255\255\008\001\009\001\
\255\255\011\001\255\255\013\001\014\001\015\001\016\001\255\255\
\255\255\049\001\255\255\021\001\022\001\255\255\255\255\025\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\035\001\036\001\037\001\038\001\039\001\040\001\255\255\
\255\255\043\001\005\001\045\001\046\001\008\001\009\001\255\255\
\011\001\255\255\013\001\014\001\015\001\016\001\255\255\255\255\
\255\255\255\255\021\001\022\001\255\255\255\255\025\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\035\001\036\001\037\001\038\001\039\001\040\001\255\255\255\255\
\043\001\005\001\045\001\046\001\008\001\009\001\255\255\011\001\
\255\255\013\001\014\001\015\001\016\001\255\255\255\255\255\255\
\255\255\021\001\022\001\255\255\255\255\025\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\035\001\
\036\001\037\001\038\001\039\001\040\001\255\255\255\255\043\001\
\005\001\045\001\046\001\008\001\009\001\255\255\011\001\255\255\
\013\001\014\001\015\001\016\001\255\255\255\255\255\255\255\255\
\021\001\022\001\255\255\255\255\025\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\035\001\036\001\
\037\001\038\001\039\001\040\001\005\001\255\255\043\001\008\001\
\045\001\046\001\011\001\255\255\013\001\014\001\015\001\016\001\
\255\255\255\255\255\255\255\255\021\001\022\001\255\255\255\255\
\025\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\035\001\036\001\037\001\038\001\039\001\040\001\
\005\001\255\255\043\001\255\255\045\001\046\001\011\001\255\255\
\013\001\014\001\015\001\016\001\255\255\255\255\255\255\255\255\
\021\001\022\001\255\255\255\255\025\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\037\001\038\001\039\001\040\001"

let yynames_const = "\
  LT\000\
  GT\000\
  LEQ\000\
  GEQ\000\
  NEG\000\
  LAND\000\
  LOR\000\
  LBRACE\000\
  RBRACE\000\
  LINE\000\
  LSQUARE\000\
  RSQUARE\000\
  LSEQ\000\
  QUOTE\000\
  TRUE\000\
  FALSE\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  INCR\000\
  DEC\000\
  EOF\000\
  COMMA\000\
  ASSIGN\000\
  LPAREN\000\
  RPAREN\000\
  LBRACKET\000\
  RBRACKET\000\
  INT\000\
  BOOL\000\
  NOTE\000\
  STRING\000\
  CHORD\000\
  SEQ\000\
  RETURN\000\
  IF\000\
  NOELSE\000\
  ELSE\000\
  WHILE\000\
  FUNC\000\
  FOR\000\
  PLAY\000\
  EQUALS\000\
  NEQUALS\000\
  SEMI\000\
  "

let yynames_block = "\
  INTLIT\000\
  BOOLLIT\000\
  STRINGLIT\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 36 "parser.mly"
            ( _1 )
# 470 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parser.mly"
                 ( ([], [])               )
# 476 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 40 "parser.mly"
               ( ((_2 :: fst _1), snd _1) )
# 484 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 41 "parser.mly"
               ( (fst _1, (_2 :: snd _1)) )
# 492 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 45 "parser.mly"
     ( { typ = _1;
	 fname = _2;
	 formals = _4;
	 locals = List.rev _7;
	 body = List.rev _8 } )
# 507 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
                  ( [] )
# 513 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 53 "parser.mly"
                  ( List.rev _1 )
# 520 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "parser.mly"
                             ( [(_1,_2)]     )
# 528 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 57 "parser.mly"
                             ( (_3,_4) :: _1 )
# 537 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
           ( Int    )
# 543 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
           ( Bool   )
# 549 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
           ( Note   )
# 555 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
           ( Chord  )
# 561 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
           ( Seq    )
# 567 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser.mly"
           ( String )
# 573 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parser.mly"
                     ( [] )
# 579 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 69 "parser.mly"
                     ( _2 :: _1 )
# 587 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 72 "parser.mly"
               ( (_1, _2) )
# 595 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parser.mly"
                   ( [] )
# 601 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 76 "parser.mly"
                   ( _2 :: _1 )
# 609 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 79 "parser.mly"
                            ( Block(List.rev _2) )
# 616 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 80 "parser.mly"
                            ( Expr _1 )
# 623 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 81 "parser.mly"
                            ( Return _2 )
# 630 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                                 ( Play _3 )
# 637 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 83 "parser.mly"
                                          ( If(_3, _5, Block([])) )
# 645 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 84 "parser.mly"
                                       ( If(_3, _5, _7) )
# 654 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 85 "parser.mly"
                                                          ( For(_3, _5, _7, _9) )
# 664 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 86 "parser.mly"
                                ( While(_3, _5) )
# 672 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "parser.mly"
                  ( Noexpr )
# 678 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 90 "parser.mly"
                  ( _1 )
# 685 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 93 "parser.mly"
                        ( IntLit(_1) )
# 692 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 94 "parser.mly"
                        ( BoolLit(_1) )
# 699 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 95 "parser.mly"
                        ( StringLit(_1) )
# 706 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 96 "parser.mly"
                        ( Id(_1) )
# 713 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 97 "parser.mly"
                        ( Binop(_1, Add, _3) )
# 721 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 98 "parser.mly"
                        ( Binop(_1, Sub, _3) )
# 729 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "parser.mly"
                        ( Binop(_1, Mult, _3) )
# 737 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 100 "parser.mly"
                        ( Binop(_1, Div, _3) )
# 745 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 101 "parser.mly"
                        ( Asn(_1, _3) )
# 753 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 102 "parser.mly"
                            ( Call(_1, _3)  )
# 761 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 103 "parser.mly"
                        ( Binop(_1, Neq, _3) )
# 769 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 104 "parser.mly"
                        ( Binop(_1, Eq, _3) )
# 777 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                        ( Unop(Incr, _2) )
# 784 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                        ( Unop(Dec, _2) )
# 791 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                        ( Unop(Neg, _2) )
# 798 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                        ( Binop(_1, Land, _3) )
# 806 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                        ( Binop(_1, Lor, _3) )
# 814 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                        ( Binop(_1, Less, _3) )
# 822 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                        ( Binop(_1, Greater, _3) )
# 830 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                        ( Binop(_1, Leq, _3) )
# 838 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                        ( Binop(_1, Geq, _3) )
# 846 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                        ( _2 )
# 853 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 5 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                                          ( NoteLit(_2, _4, _6) )
# 862 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'args_list) in
    Obj.repr(
# 116 "parser.mly"
                             ( ChordLit(_2) )
# 869 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'args_opt) in
    Obj.repr(
# 117 "parser.mly"
                                 ( SeqLit(_3) )
# 876 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                        ( _2 )
# 883 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 119 "parser.mly"
                        ( BoolLit(true) )
# 889 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 120 "parser.mly"
                        ( BoolLit(false) )
# 895 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 124 "parser.mly"
                  ( [] )
# 901 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'args_list) in
    Obj.repr(
# 125 "parser.mly"
               ( List.rev _1 )
# 908 "parser.ml"
               : 'args_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 128 "parser.mly"
                            ( [_1] )
# 915 "parser.ml"
               : 'args_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'args_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 129 "parser.mly"
                         ( _3 :: _1 )
# 923 "parser.ml"
               : 'args_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)

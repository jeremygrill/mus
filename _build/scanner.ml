# 3 "scanner.mll"
  open Parser 
# 4 "scanner.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\029\000\211\255\104\000\065\000\091\000\117\000\160\000\
    \186\000\212\000\238\000\139\000\137\000\131\000\132\000\134\000\
    \227\255\228\255\229\255\230\255\231\255\232\255\233\255\002\000\
    \003\000\121\000\001\000\004\000\246\255\247\255\007\000\249\255\
    \251\255\001\000\015\000\022\000\255\255\254\255\243\255\242\255\
    \244\255\245\255\240\255\239\255\236\255\235\255\130\000\226\255\
    \136\000\140\000\225\255\133\000\149\000\224\255\140\000\138\000\
    \153\000\223\255\140\000\248\000\222\255\001\001\253\000\005\001\
    \221\255\012\001\038\001\064\001\090\001\116\001\142\001\168\001\
    \194\001\220\001\246\001\016\002\042\002\068\002\094\002\120\002\
    \146\002\172\002\198\002\224\002\250\002\020\003\046\003\072\003\
    \098\003\124\003\237\003\254\255\255\255";
  Lexing.lex_backtrk = 
   "\255\255\045\000\255\255\043\000\045\000\045\000\045\000\045\000\
    \045\000\045\000\045\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\018\000\
    \017\000\021\000\255\255\014\000\255\255\255\255\007\000\255\255\
    \255\255\003\000\002\000\005\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\045\000\045\000\045\000\045\000\035\000\036\000\045\000\
    \045\000\037\000\045\000\045\000\045\000\038\000\045\000\045\000\
    \039\000\045\000\045\000\042\000\045\000\045\000\040\000\045\000\
    \045\000\041\000\255\255\255\255\255\255";
  Lexing.lex_default = 
   "\255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \255\255\255\255\255\255\255\255\000\000\000\000\255\255\000\000\
    \000\000\255\255\255\255\255\255\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\255\255\000\000\
    \255\255\255\255\000\000\255\255\255\255\000\000\255\255\255\255\
    \255\255\000\000\255\255\255\255\000\000\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\091\000\000\000\000\000";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\036\000\036\000\000\000\000\000\036\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \036\000\027\000\028\000\000\000\029\000\000\000\026\000\042\000\
    \020\000\019\000\032\000\034\000\031\000\033\000\039\000\035\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\038\000\016\000\024\000\030\000\023\000\045\000\
    \044\000\041\000\014\000\012\000\040\000\037\000\000\000\000\000\
    \000\000\015\000\000\000\000\000\000\000\000\000\013\000\000\000\
    \000\000\000\000\000\000\011\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\022\000\000\000\021\000\000\000\000\000\
    \000\000\001\000\001\000\001\000\001\000\008\000\006\000\001\000\
    \001\000\009\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \005\000\001\000\010\000\001\000\004\000\001\000\001\000\007\000\
    \001\000\001\000\001\000\018\000\025\000\017\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\087\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\084\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\078\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\079\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \059\000\054\000\051\000\048\000\046\000\043\000\047\000\049\000\
    \050\000\052\000\053\000\055\000\056\000\057\000\061\000\058\000\
    \002\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \074\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\071\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\070\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\065\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\060\000\062\000\063\000\064\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \066\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\067\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\068\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \069\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\072\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\073\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\075\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\076\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\077\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\081\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\080\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\082\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\083\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\085\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\086\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\088\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\089\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\092\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\255\255";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\255\255\000\000\255\255\000\000\026\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\033\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\034\000\000\000\000\000\000\000\000\000\023\000\
    \024\000\027\000\000\000\000\000\030\000\035\000\255\255\255\255\
    \255\255\000\000\255\255\255\255\255\255\255\255\000\000\255\255\
    \255\255\255\255\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\255\255\000\000\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\004\000\004\000\004\000\004\000\
    \004\000\004\000\004\000\004\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \011\000\012\000\013\000\014\000\015\000\025\000\046\000\048\000\
    \049\000\051\000\052\000\054\000\055\000\056\000\058\000\011\000\
    \000\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
    \008\000\008\000\008\000\008\000\008\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
    \009\000\009\000\009\000\009\000\009\000\009\000\009\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\010\000\010\000\010\000\010\000\010\000\010\000\010\000\
    \010\000\059\000\061\000\062\000\063\000\065\000\065\000\065\000\
    \065\000\065\000\065\000\065\000\065\000\065\000\065\000\065\000\
    \065\000\065\000\065\000\065\000\065\000\065\000\065\000\065\000\
    \065\000\065\000\065\000\065\000\065\000\065\000\065\000\066\000\
    \066\000\066\000\066\000\066\000\066\000\066\000\066\000\066\000\
    \066\000\066\000\066\000\066\000\066\000\066\000\066\000\066\000\
    \066\000\066\000\066\000\066\000\066\000\066\000\066\000\066\000\
    \066\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\069\000\069\000\069\000\
    \069\000\069\000\069\000\069\000\069\000\069\000\069\000\069\000\
    \069\000\069\000\069\000\069\000\069\000\069\000\069\000\069\000\
    \069\000\069\000\069\000\069\000\069\000\069\000\069\000\070\000\
    \070\000\070\000\070\000\070\000\070\000\070\000\070\000\070\000\
    \070\000\070\000\070\000\070\000\070\000\070\000\070\000\070\000\
    \070\000\070\000\070\000\070\000\070\000\070\000\070\000\070\000\
    \070\000\071\000\071\000\071\000\071\000\071\000\071\000\071\000\
    \071\000\071\000\071\000\071\000\071\000\071\000\071\000\071\000\
    \071\000\071\000\071\000\071\000\071\000\071\000\071\000\071\000\
    \071\000\071\000\071\000\072\000\072\000\072\000\072\000\072\000\
    \072\000\072\000\072\000\072\000\072\000\072\000\072\000\072\000\
    \072\000\072\000\072\000\072\000\072\000\072\000\072\000\072\000\
    \072\000\072\000\072\000\072\000\072\000\073\000\073\000\073\000\
    \073\000\073\000\073\000\073\000\073\000\073\000\073\000\073\000\
    \073\000\073\000\073\000\073\000\073\000\073\000\073\000\073\000\
    \073\000\073\000\073\000\073\000\073\000\073\000\073\000\074\000\
    \074\000\074\000\074\000\074\000\074\000\074\000\074\000\074\000\
    \074\000\074\000\074\000\074\000\074\000\074\000\074\000\074\000\
    \074\000\074\000\074\000\074\000\074\000\074\000\074\000\074\000\
    \074\000\075\000\075\000\075\000\075\000\075\000\075\000\075\000\
    \075\000\075\000\075\000\075\000\075\000\075\000\075\000\075\000\
    \075\000\075\000\075\000\075\000\075\000\075\000\075\000\075\000\
    \075\000\075\000\075\000\076\000\076\000\076\000\076\000\076\000\
    \076\000\076\000\076\000\076\000\076\000\076\000\076\000\076\000\
    \076\000\076\000\076\000\076\000\076\000\076\000\076\000\076\000\
    \076\000\076\000\076\000\076\000\076\000\077\000\077\000\077\000\
    \077\000\077\000\077\000\077\000\077\000\077\000\077\000\077\000\
    \077\000\077\000\077\000\077\000\077\000\077\000\077\000\077\000\
    \077\000\077\000\077\000\077\000\077\000\077\000\077\000\078\000\
    \078\000\078\000\078\000\078\000\078\000\078\000\078\000\078\000\
    \078\000\078\000\078\000\078\000\078\000\078\000\078\000\078\000\
    \078\000\078\000\078\000\078\000\078\000\078\000\078\000\078\000\
    \078\000\079\000\079\000\079\000\079\000\079\000\079\000\079\000\
    \079\000\079\000\079\000\079\000\079\000\079\000\079\000\079\000\
    \079\000\079\000\079\000\079\000\079\000\079\000\079\000\079\000\
    \079\000\079\000\079\000\080\000\080\000\080\000\080\000\080\000\
    \080\000\080\000\080\000\080\000\080\000\080\000\080\000\080\000\
    \080\000\080\000\080\000\080\000\080\000\080\000\080\000\080\000\
    \080\000\080\000\080\000\080\000\080\000\081\000\081\000\081\000\
    \081\000\081\000\081\000\081\000\081\000\081\000\081\000\081\000\
    \081\000\081\000\081\000\081\000\081\000\081\000\081\000\081\000\
    \081\000\081\000\081\000\081\000\081\000\081\000\081\000\082\000\
    \082\000\082\000\082\000\082\000\082\000\082\000\082\000\082\000\
    \082\000\082\000\082\000\082\000\082\000\082\000\082\000\082\000\
    \082\000\082\000\082\000\082\000\082\000\082\000\082\000\082\000\
    \082\000\083\000\083\000\083\000\083\000\083\000\083\000\083\000\
    \083\000\083\000\083\000\083\000\083\000\083\000\083\000\083\000\
    \083\000\083\000\083\000\083\000\083\000\083\000\083\000\083\000\
    \083\000\083\000\083\000\084\000\084\000\084\000\084\000\084\000\
    \084\000\084\000\084\000\084\000\084\000\084\000\084\000\084\000\
    \084\000\084\000\084\000\084\000\084\000\084\000\084\000\084\000\
    \084\000\084\000\084\000\084\000\084\000\085\000\085\000\085\000\
    \085\000\085\000\085\000\085\000\085\000\085\000\085\000\085\000\
    \085\000\085\000\085\000\085\000\085\000\085\000\085\000\085\000\
    \085\000\085\000\085\000\085\000\085\000\085\000\085\000\086\000\
    \086\000\086\000\086\000\086\000\086\000\086\000\086\000\086\000\
    \086\000\086\000\086\000\086\000\086\000\086\000\086\000\086\000\
    \086\000\086\000\086\000\086\000\086\000\086\000\086\000\086\000\
    \086\000\087\000\087\000\087\000\087\000\087\000\087\000\087\000\
    \087\000\087\000\087\000\087\000\087\000\087\000\087\000\087\000\
    \087\000\087\000\087\000\087\000\087\000\087\000\087\000\087\000\
    \087\000\087\000\087\000\088\000\088\000\088\000\088\000\088\000\
    \088\000\088\000\088\000\088\000\088\000\088\000\088\000\088\000\
    \088\000\088\000\088\000\088\000\088\000\088\000\088\000\088\000\
    \088\000\088\000\088\000\088\000\088\000\089\000\089\000\089\000\
    \089\000\089\000\089\000\089\000\089\000\089\000\089\000\089\000\
    \089\000\089\000\089\000\089\000\089\000\089\000\089\000\089\000\
    \089\000\089\000\089\000\089\000\089\000\089\000\089\000\090\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\090\000";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec tokenize lexbuf =
    __ocaml_lex_tokenize_rec lexbuf 0
and __ocaml_lex_tokenize_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 9 "scanner.mll"
                     ( tokenize lexbuf )
# 384 "scanner.ml"

  | 1 ->
# 10 "scanner.mll"
       ( comment lexbuf )
# 389 "scanner.ml"

  | 2 ->
# 11 "scanner.mll"
      ( PLUS )
# 394 "scanner.ml"

  | 3 ->
# 12 "scanner.mll"
      ( MINUS )
# 399 "scanner.ml"

  | 4 ->
# 13 "scanner.mll"
      ( TIMES )
# 404 "scanner.ml"

  | 5 ->
# 14 "scanner.mll"
      ( DIVIDE )
# 409 "scanner.ml"

  | 6 ->
# 15 "scanner.mll"
      ( COMMA )
# 414 "scanner.ml"

  | 7 ->
# 16 "scanner.mll"
      ( ASSIGN )
# 419 "scanner.ml"

  | 8 ->
# 17 "scanner.mll"
      ( LSEQ )
# 424 "scanner.ml"

  | 9 ->
# 18 "scanner.mll"
      ( QUOTE )
# 429 "scanner.ml"

  | 10 ->
# 19 "scanner.mll"
       ( NEQUALS )
# 434 "scanner.ml"

  | 11 ->
# 20 "scanner.mll"
       ( EQUALS )
# 439 "scanner.ml"

  | 12 ->
# 21 "scanner.mll"
       ( INCR )
# 444 "scanner.ml"

  | 13 ->
# 22 "scanner.mll"
       ( DEC )
# 449 "scanner.ml"

  | 14 ->
# 23 "scanner.mll"
      ( NEG )
# 454 "scanner.ml"

  | 15 ->
# 24 "scanner.mll"
       ( LAND )
# 459 "scanner.ml"

  | 16 ->
# 25 "scanner.mll"
       ( LOR )
# 464 "scanner.ml"

  | 17 ->
# 26 "scanner.mll"
      ( LT )
# 469 "scanner.ml"

  | 18 ->
# 27 "scanner.mll"
      ( GT )
# 474 "scanner.ml"

  | 19 ->
# 28 "scanner.mll"
       ( LEQ )
# 479 "scanner.ml"

  | 20 ->
# 29 "scanner.mll"
       ( GEQ )
# 484 "scanner.ml"

  | 21 ->
# 30 "scanner.mll"
      ( LINE )
# 489 "scanner.ml"

  | 22 ->
# 31 "scanner.mll"
      ( LSQUARE )
# 494 "scanner.ml"

  | 23 ->
# 32 "scanner.mll"
      ( RSQUARE )
# 499 "scanner.ml"

  | 24 ->
# 33 "scanner.mll"
      ( LPAREN )
# 504 "scanner.ml"

  | 25 ->
# 34 "scanner.mll"
      ( RPAREN )
# 509 "scanner.ml"

  | 26 ->
# 35 "scanner.mll"
      ( LBRACE )
# 514 "scanner.ml"

  | 27 ->
# 36 "scanner.mll"
      ( RBRACE )
# 519 "scanner.ml"

  | 28 ->
# 37 "scanner.mll"
      ( SEMI )
# 524 "scanner.ml"

  | 29 ->
# 38 "scanner.mll"
        ( INT )
# 529 "scanner.ml"

  | 30 ->
# 39 "scanner.mll"
         ( BOOL )
# 534 "scanner.ml"

  | 31 ->
# 40 "scanner.mll"
         ( NOTE )
# 539 "scanner.ml"

  | 32 ->
# 41 "scanner.mll"
          ( CHORD )
# 544 "scanner.ml"

  | 33 ->
# 42 "scanner.mll"
        ( SEQ )
# 549 "scanner.ml"

  | 34 ->
# 43 "scanner.mll"
           ( STRING )
# 554 "scanner.ml"

  | 35 ->
# 44 "scanner.mll"
           ( RETURN )
# 559 "scanner.ml"

  | 36 ->
# 45 "scanner.mll"
       ( IF )
# 564 "scanner.ml"

  | 37 ->
# 46 "scanner.mll"
         ( ELSE )
# 569 "scanner.ml"

  | 38 ->
# 47 "scanner.mll"
          ( WHILE )
# 574 "scanner.ml"

  | 39 ->
# 48 "scanner.mll"
        ( FOR )
# 579 "scanner.ml"

  | 40 ->
# 49 "scanner.mll"
         ( PLAY )
# 584 "scanner.ml"

  | 41 ->
# 50 "scanner.mll"
         ( TRUE )
# 589 "scanner.ml"

  | 42 ->
# 51 "scanner.mll"
          ( FALSE )
# 594 "scanner.ml"

  | 43 ->
let
# 52 "scanner.mll"
            lit
# 600 "scanner.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 52 "scanner.mll"
                ( INTLIT(int_of_string lit) )
# 604 "scanner.ml"

  | 44 ->
# 53 "scanner.mll"
      ( EOF )
# 609 "scanner.ml"

  | 45 ->
let
# 54 "scanner.mll"
                var
# 615 "scanner.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 54 "scanner.mll"
                    ( ID(var) )
# 619 "scanner.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_tokenize_rec lexbuf __ocaml_lex_state

and comment lexbuf =
    __ocaml_lex_comment_rec lexbuf 90
and __ocaml_lex_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 57 "scanner.mll"
     ( tokenize lexbuf )
# 630 "scanner.ml"

  | 1 ->
# 58 "scanner.mll"
    ( comment lexbuf )
# 635 "scanner.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_comment_rec lexbuf __ocaml_lex_state

;;


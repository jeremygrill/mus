(* toplevel.ml, driver for scanner and parser *)
open Ast

let () =
	let usage_msg = "usage: ./toplevel.native [file.mc]" in
	let channel = ref stdin in
	Arg.parse [] (fun file -> channel := open_in file) usage_msg; 
	let lexbuf = Lexing.from_channel !channel in
	let ast = Parser.program Scanner.tokenize lexbuf in  (*change Parser.expr to Parser.program later *)
	print_string (Ast.string_of_program ast)

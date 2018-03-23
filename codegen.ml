(* Code generation: translate takes a semantically checked AST and
produces LLVM IR

LLVM tutorial: Make sure to read the OCaml version of the tutorial

http://llvm.org/docs/tutorial/index.html

Detailed documentation on the OCaml LLVM library:

http://llvm.moe/
http://llvm.moe/ocaml/

*)

(* We'll refer to Llvm and Ast constructs with module names *)
module L = Llvm
module A = Ast
open Sast 

module StringMap = Map.Make(String)

(* Code Generation from the SAST. Returns an LLVM module if successful,
   throws an exception if something is wrong. *)
let translate (_, functions) =
  let context    = L.global_context () in
  (* Add types to the context so we can use them in our LLVM code *)
  let i32_t      = L.i32_type    context
  and i8_t       = L.i8_type     context 
  and void_t     = L.void_type   context 
  (* Create an LLVM module -- this is a "container" into which we'll 
     generate actual code *)
  and the_module = L.create_module context "MicroC" in

  (* Convert MicroC types to LLVM types *)
  let ltype_of_typ = function
      A.Int   -> i32_t
    | A.Void  -> void_t
    | t -> raise (Failure ("Type " ^ A.string_of_typ t ^ " not implemented yet"))
  in

  (* Declare a "printf" function to implement MicroC's "print". *)
  let printf_t : L.lltype = 
      L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
  let printf_func : L.llvalue = 
     L.declare_function "printf" printf_t the_module in 

  let to_imp str = raise (Failure ("Not yet implemented: " ^ str)) in

  (* Generate the instructions for a trivial "main" function *)
  let build_function fdecl =
    (* Make the LLVM module "aware" of the main function *)
    let main_ty = L.function_type (ltype_of_typ fdecl.styp) [||] in
    let the_function = L.define_function "main" main_ty the_module in
    (* Create an Instruction Builder, which points into a basic block
      and determines where the next instruction should be placed *)
    let builder = L.builder_at_end context (L.entry_block the_function) in
    (* Create a pointer to a format string for printf *)
    let int_format_str = L.build_global_stringptr "%d\n" "fmt" builder in
    (* Generate LLVM code for a call to MicroC's "print" *)
    let rec expr builder ((_, e) : sexpr) = match e with
<<<<<<< HEAD
	SLiteral i -> L.const_int i32_t i (* Generate a constant integer *)
      | SCall ("print", [e]) -> (* Generate a call instruction *)
	  L.build_call printf_func [| int_format_str ; (expr builder e) |]
	    "printf" builder 
      (* Throw an error for any other expressions *)
      | _ -> to_imp (string_of_sexpr (A.Int,e))  
=======
	      SIntLit i -> L.const_int i32_t i
      | SBoolLit b -> L.const_int i1_t (if b then 1 else 0)
      | SNoteLit (e1, e2, e3) -> L.const_int i32_t 5
(*    let (t, _) = e1
    and e1' = expr builder e1
    and e2' = expr builder e2 
    and e3' = expr builder e3 in 
    L.const_int e1   *)     
      | SChordLit c -> L.const_int (* crd_t c *) i32_t 6
      | SSeqLit s -> L.const_int (* seq_t s *) i32_t 7
      | SStringLit a -> L.const_int i32_t 5 (* str_t a *)
      | SVariable s -> raise(Failure "not sure what to do here")
      | SNoexpr -> L.const_int i32_t 0
      | SId s -> L.build_load (lookup s) s builder
      | SAsn (s, e) -> let e' = expr builder e in
                          let _  = L.build_store e' (lookup s) builder in e'
      | SBinop (e1, op, e2) ->
	  let (t, _) = e1
	  and e1' = expr builder e1
	  and e2' = expr builder e2 in
	  if t = A.Note then (match op with 
	    A.Add     -> L.build_add
	  | A.Sub     -> 
        raise (Failure "internal error: semant should have rejected sub on note")
	  | A.Mult    -> L.build_mul
	  | A.Div     -> 
        raise (Failure "internal error: semant should have rejected div on note")
	  | A.Eq      -> L.build_icmp L.Icmp.Eq
	  | A.Neq     -> L.build_icmp L.Icmp.Ne
	  | A.Less    -> 
        raise (Failure "internal error: semant should have rejected less than on note")
	  | A.Leq     -> 
        raise (Failure "internal error: semant should have rejected leq on note")
	  | A.Greater -> 
        raise (Failure "internal error: semant should have rejected greater than on note")
	  | A.Geq     -> 
        raise (Failure "internal error: semant should have rejected geq on note")
	  | A.Land | A.Lor ->
	      raise (Failure "internal error: semant should have rejected and/or on note")
    | A.Comma   -> 
        raise (Failure "internal error: semant should have rejected comma on note")
	  ) e1' e2' "tmp" builder 
	  else if t = A.Chord then (match op with 
      A.Add     -> L.build_add
    | A.Sub     -> 
        raise (Failure "internal error: semant should have rejected sub on chord")
    | A.Mult    -> L.build_mul
    | A.Div     -> 
        raise (Failure "internal error: semant should have rejected div on chord")
    | A.Eq      -> L.build_icmp L.Icmp.Eq
    | A.Neq     -> L.build_icmp L.Icmp.Ne
    | A.Less    -> 
        raise (Failure "internal error: semant should have rejected less than on chord")
    | A.Leq     -> 
        raise (Failure "internal error: semant should have rejected leq on chord")
    | A.Greater -> 
        raise (Failure "internal error: semant should have rejected greater than on chord")
    | A.Geq     -> 
        raise (Failure "internal error: semant should have rejected geq on chord")
    | A.Land | A.Lor ->
        raise (Failure "internal error: semant should have rejected and/or on chord")
    | A.Comma   -> 
        raise (Failure "internal error: semant should have rejected comma on chord")    
    ) e1' e2' "tmp" builder 
    else if t = A.Seq then (match op with 
      A.Add     -> L.build_add
    | A.Sub     -> 
        raise (Failure "internal error: semant should have rejected sub on seq")
    | A.Mult    ->
        raise (Failure "internal error: semant should have rejected mult on seq")
    | A.Div     -> 
        raise (Failure "internal error: semant should have rejected div on seq")
    | A.Eq      -> L.build_icmp L.Icmp.Eq
    | A.Neq     -> L.build_icmp L.Icmp.Ne
    | A.Less    -> 
        raise (Failure "internal error: semant should have rejected less than on seq")
    | A.Leq     -> 
        raise (Failure "internal error: semant should have rejected leq on seq")
    | A.Greater -> 
        raise (Failure "internal error: semant should have rejected greater than on seq")
    | A.Geq     -> 
        raise (Failure "internal error: semant should have rejected geq on seq")
    | A.Land | A.Lor ->
        raise (Failure "internal error: semant should have rejected and/or on seq")
    | A.Comma   -> 
        raise (Failure "internal error: semant should have rejected comma on seq")    
    ) e1' e2' "tmp" builder 
    else (match op with
	  | A.Add     -> L.build_add
	  | A.Sub     -> L.build_sub
	  | A.Mult    -> L.build_mul
    | A.Div     -> L.build_sdiv
	  | A.Land    -> L.build_and
	  | A.Lor     -> L.build_or
	  | A.Eq      -> L.build_icmp L.Icmp.Eq
	  | A.Neq     -> L.build_icmp L.Icmp.Ne
	  | A.Less    -> L.build_icmp L.Icmp.Slt
	  | A.Leq     -> L.build_icmp L.Icmp.Sle
	  | A.Greater -> L.build_icmp L.Icmp.Sgt
	  | A.Geq     -> L.build_icmp L.Icmp.Sge
    | A.Comma   ->  
      raise (Failure "internal error: this isnt working yet lol") (*THIS IS NOT RIGHT, CHANGE LATER*)    
	  ) e1' e2' "tmp" builder
      | SUnop(op, e) ->
	  let (t, _) = e in
          let e' = expr builder e in
	  (match op with
	    A.Neg                  -> L.build_neg
    | A.Not                  -> L.build_not
    | A.Incr                 -> raise (Failure "Incr not implemented yet") (*L.build_add i32_t 1*)
    | A.Dec                  -> raise (Failure "Dec not implemented yet") (*L.build_add i32_t -1*) ) e' "tmp" builder
    (*| SCall ("print", [n]) ->
    L.build_call print_func [| note_format_str ; (expr builder n) |]
      "print" builder
      |SCall (f, args) ->
        let (fdef, fdecl) = StringMap.find f function_decls in
    let llargs = List.rev (List.map (expr builder) (List.rev args)) in
    let result = f ^ "_result" in
          L.build_call fdef (Array.of_list llargs) result builder in *)
    | SCall ("print", [e]) ->
	  L.build_call print_func [| int_format_str ; (expr builder e) || note_format_str ; (expr builder e) |]
	    "print" builder
      | SCall (f, args) ->
         let (fdef, fdecl) = StringMap.find f function_decls in
	 let llargs = List.rev (List.map (expr builder) (List.rev args)) in
	 let result = f ^ "_result" in
         L.build_call fdef (Array.of_list llargs) result builder
>>>>>>> b04f65de7d474ea449e95d3f939d07a0dcc08617
    in
    (* Deal with a block of expression statements, terminated by a return *)
    let rec stmt builder = function
	SBlock sl -> List.fold_left stmt builder sl
      | SExpr e -> let _ = expr builder e in builder 
      | SReturn e -> let _ = match fdecl.styp with
                              A.Int -> L.build_ret (expr builder e) builder 
                            | _ -> to_imp (A.string_of_typ fdecl.styp)
                     in builder
      | s -> to_imp (string_of_sstmt s)
    (* Generate the instructions for the function's body, 
       which mutates the_module *)
    in ignore(stmt builder (SBlock fdecl.sbody))
  (* Build each function (there should only be one for Hello World), 
     and return the final module *)
  in List.iter build_function functions; the_module

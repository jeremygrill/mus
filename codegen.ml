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
let translate (globals, functions) =
  let context    = L.global_context () in
  (* Create an LLVM module -- this is a "container" into which we'll 
     generate actual code *)
  let the_module = L.create_module context "Mus" in

  (* Add types to the context so we can use them in our LLVM code *)
  let i32_t      = L.i32_type    context
  and i8_t       = L.i8_type     context 
  and i1_t       = L.i1_type     context in 
  let i8p_t      = L.pointer_type i8_t in
  let i32p_t     = L.pointer_type i32_t in 
  let i32pp_t    = L.pointer_type i32p_t in 

  let chord_node  = L.named_struct_type context "chord_node" in
  let chordp_node = L.pointer_type chord_node in
  L.struct_set_body chord_node [| i32_t; chordp_node; |] true; 


  (* Convert MicroC types to LLVM types *)
  let ltype_of_typ = function
      A.Int   -> i32_t
    | A.Note  -> i32_t
    | A.Bool  -> i1_t
    | A.Chord -> chordp_node
    | _       -> raise(Failure("sorry"))

    (*| t -> raise (Failure ("Type " ^ A.string_of_typ t ^ " not implemented yet"))*)
  in

  (* Declare each global variable; remember its value in a map *)
  let global_vars =
    let global_var m (t, n) =
      let init = L.const_int (ltype_of_typ t) 0
      in StringMap.add n (L.define_global n init the_module) m in
    List.fold_left global_var StringMap.empty globals in


  let printf_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
  let printf_func = L.declare_function "printf" printf_t the_module in

  (* printing note*)
  let printn_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in 
  let printn_func = L.declare_function "printf" printn_t the_module in

  (* printing chord*)
  let printc_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in 
  let printc_func = L.declare_function "printf" printc_t the_module in

  (*Ethan stuff*)
  let play_t = L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in 
  let play_func = L.declare_function "play" play_t the_module in


  let to_imp str = raise (Failure ("Not yet implemented: " ^ str)) in

  (* Define each function (arguments and return type) so we can 
   * define it's body and call it later *)
  let function_decls =
    let function_decl m fdecl =
      let name = fdecl.sfname
      and formal_types = 
  Array.of_list (List.map (fun (t,_) -> ltype_of_typ t) fdecl.sformals)
      in let ftype = L.function_type (ltype_of_typ fdecl.styp) formal_types in
      StringMap.add name (L.define_function name ftype the_module, fdecl) m in
    List.fold_left function_decl StringMap.empty functions in
  
  (* Fill in the body of the given function *)
  let build_function_body fdecl =
    let (the_function, _) = StringMap.find fdecl.sfname function_decls in
    let builder = L.builder_at_end context (L.entry_block the_function) in

    let int_format_str = L.build_global_stringptr "%d\n" "fmt" builder
    and note_format_str = L.build_global_stringptr "(%d,%d|%d)\n" "fmt" builder
    and chord_open_format_str = L.build_global_stringptr "[" "fmt" builder
    and chord_format_str = L.build_global_stringptr "(%d,%d|%d)" "fmt" builder 
    and chord_closed_format_str = L.build_global_stringptr "]\n" "fmt" builder in

    (* Construct the function's "locals": formal arguments and locally
       declared variables.  Allocate each on the stack, initialize their
       value, if appropriate, and remember their values in the "locals" map *)
    let local_vars =
      let add_formal m (t, n) p = 
        let () = L.set_value_name n p in
  let local = L.build_alloca (ltype_of_typ t) n builder in
        let _  = L.build_store p local builder in
  StringMap.add n local m 
      in

      (* Allocate space for any locally declared variables and add the
       * resulting registers to our map *)
      let add_local m (t, n) =
  let local_var = L.build_alloca (ltype_of_typ t) n builder
  in StringMap.add n local_var m 
      in

      let formals = List.fold_left2 add_formal StringMap.empty fdecl.sformals
          (Array.to_list (L.params the_function)) in
      List.fold_left add_local formals fdecl.slocals 
    in

    (* Return the value for a variable or formal argument. First check
     * locals, then globals *)
    let lookup n = try StringMap.find n local_vars
                   with Not_found -> StringMap.find n global_vars
    in


    (* Generate LLVM code for a call to Mus's "print" *)
    let rec expr builder ((_, e) : sexpr) = match e with
        SIntLit i -> L.const_int i32_t i (* Generate a constant integer *)
      | SBoolLit b -> L.const_int i1_t (if b then 1 else 0)
      | SNoteLit (n1, n2, n3) ->
    let n1' = expr builder n1  (* 8 bits of n1 (pitch) *)
    and n2' = expr builder n2  (* 8 bits of n2 (velocity) *)
    and n3' = expr builder n3  (* 16 bits of n3 (duration) *)
    and n1shift' = expr builder (Int, SIntLit 16777216)  (* shift 24 bits *)
    and n2shift' = expr builder (Int, SIntLit 65536) in  (* shift 16 bits *)
    let i1' = (L.build_mul n1' n1shift' "tmp" builder)  
    and i2' = (L.build_mul n2' n2shift' "tmp" builder) in
    let n12' = (L.build_or i1' i2' "tmp" builder) in 
       L.build_or n3' n12' "tmp" builder 
       | SChordLit (e) -> 
    
    let obj = L.build_alloca chordp_node "c1" builder in 
    L.dump_value obj;

    let helper elem ptr = 
    let i1 = L.build_malloc chord_node "a2" builder in
    L.dump_value i1;
    let istore = L.build_store i1 obj builder in
    L.dump_value istore; 
    let i3 = L.build_load obj "a3" builder in
    L.dump_value i3; 

    let empty = L.const_int i32_t 0 in

    let i4 = L.build_in_bounds_gep i3 [|empty; empty|] "a4"  builder in
    L.dump_value i4; 

    let istore2 = L.build_store (expr builder elem) i4 builder in
    L.dump_value istore2;

    let i5 = L.build_load obj "a5" builder in
    L.dump_value i5;
    let one = L.const_int i32_t 1 in 
    let i6 = L.build_in_bounds_gep i5 [|empty; one|] "a6" builder in 
    L.dump_value i6;

    let istore3 = L.build_store ptr i6 builder in
    L.dump_value istore3; 
    let i7 = L.build_load obj "a7" builder in 
    L.dump_value i7;
    i3
    in (*end "helper"*)

    let i8 = List.fold_right helper e (L.const_null chordp_node) in (*NEED TO FIGURE OUT HOW TO FEED IN A NULL CHORD POINTER*)
    L.dump_value i8;
    let final = L.build_load obj "final" builder in 
    L.dump_value final;
    final
    (*let next = List.hd e in
    let e1' = expr builder next in*)




    (*let a = L.const_struct context [| expr builder (Int, SIntLit 1); L.const_pointer_null i32_t |] in 
    let a_ptr = L.build_gep (L.const_int i32_t 0) [| (L.const_int i32_t 4) |] "chord_node" builder in
    a_ptr*)

    (*let act_list = L.build_load list_pointer "cur_list" builder in
      let pointer_to_element = L.build_gep act_list [| index |] "pointer_to_element" builder in*)

    (*L.const_int i32_t 1*) (* this is the safe line *)
    (*let e1' = List.map (expr builder) e1 in
    let typ  = L.pointer_type (L.type_of (List.hd e1')) in
    let size = L.const_int i32_t (List.length e1') in
    let arr  = L.build_array_malloc typ size "arr" builder in arr*)
    (*let arr_e = List.iteri (L.build_gep arr [| L.const_int i32_t i |] "arr_e" builder) in *)
    (*let fill i e =
      L.build_gep arr [| L.const_int i32_t i |] "arr_e" builder in
    (* Populate Array with Values *)
    List.iteri fill 2 e1' in
    e1'*)
       | SCall ("print", [e]) -> (* Generate a call instruction *) L.build_call printf_func [| int_format_str ; (expr builder e) |] "printf" builder 
       | SCall ("printn", [e]) -> 
    let e' = expr builder e in 
    let n1 = L.build_and e' (expr builder (Int, SIntLit 4294967295)) "tmp" builder in 
    let n1' = L.build_sdiv n1 (expr builder (Int, SIntLit 16777216)) "tmp" builder in
    let n2 = L.build_and e' (expr builder (Int, SIntLit 16777215)) "tmp" builder in 
    let n2' = L.build_sdiv n2 (expr builder (Int, SIntLit 65536)) "tmp" builder in
    let n3' = L.build_and e' (expr builder (Int, SIntLit 65535)) "tmp" builder in 
    L.build_call printn_func[| note_format_str; n1'; n2'; n3' |] "printn" builder;
       | SCall ("play", [e]) ->
    let cmd = ("node midigen.js" ^ (string_of_sexpr e)) in
    let result_code = Sys.command cmd in
    L.build_call printf_func [| int_format_str; (expr builder (Int, SIntLit result_code)) |] "printf" builder;
    (*in (match result_code with 
          0 -> 
            print_string ("===== MIDI File Generated =====\n");
        | _ as error_code -> raise (Failure ("Error!\n"))
        )*)
       | SCall ("printc", [e]) -> 
    (*PRINT OPEN BRACKET:*)
    let closed_bracket = L.build_call printn_func [| chord_open_format_str |] "printf" builder in

    let i1 = L.build_alloca i32_t "b1" builder in 
    L.dump_value i1;    
    let i2 = L.build_alloca chordp_node "tmp" builder in 
    L.dump_value i2;
    let istore = L.build_store (expr builder e) i2 builder in
    L.dump_value istore; 
    let i3 = L.build_load i2 "b3" builder in 
    L.dump_value i3;  
    let empty = L.const_int i32_t 0 in
    let i4 = L.build_in_bounds_gep i3 [|empty; empty|] "b4"  builder in
    L.dump_value i4;
    let i5 = L.build_load i4 "b5" builder in
    L.dump_value i5;

    (*PARSE IT AS A NOTE!!!*)
    let n1 = L.build_and i5 (expr builder (Int, SIntLit 4294967295)) "tmp" builder in 
    let n1' = L.build_sdiv n1 (expr builder (Int, SIntLit 16777216)) "tmp" builder in
    let n2 = L.build_and i5 (expr builder (Int, SIntLit 16777215)) "tmp" builder in 
    let n2' = L.build_sdiv n2 (expr builder (Int, SIntLit 65536)) "tmp" builder in
    let n3' = L.build_and i5 (expr builder (Int, SIntLit 65535)) "tmp" builder in 

    let i6 = L.build_call printn_func [| chord_format_str ; n1'; n2'; n3' |] "printf" builder in
    L.dump_value i6;
    let i7 = L.build_load i2 "b7" builder in 
    L.dump_value i7;

    (*SECOND ITERATION*)
    let one = L.const_int i32_t 1 in 
    let i10 = L.build_in_bounds_gep i7 [|empty; one|] "b7" builder in 
    L.dump_value i10;
    let i11 = L.build_load i10 "b8" builder in 
    L.dump_value i11;

    let i21 = L.build_alloca i32_t "b1" builder in 
    L.dump_value i21;    
    let i22 = L.build_alloca chordp_node "tmp" builder in 
    L.dump_value i22;
    let istore22 = L.build_store (expr builder e) i22 builder in
    L.dump_value istore22; 
    let i23 = L.build_load i22 "b3" builder in 
    L.dump_value i23; 
    let i24 = L.build_in_bounds_gep i11 [|empty; empty|] "b4"  builder in
    L.dump_value i24;
    let i25 = L.build_load i24 "b5" builder in
    L.dump_value i25;

    (*PARSE IT AS A NOTE!!!*)
    let n21 = L.build_and i25 (expr builder (Int, SIntLit 4294967295)) "tmp" builder in 
    let n21' = L.build_sdiv n21 (expr builder (Int, SIntLit 16777216)) "tmp" builder in
    let n22 = L.build_and i25 (expr builder (Int, SIntLit 16777215)) "tmp" builder in 
    let n22' = L.build_sdiv n22 (expr builder (Int, SIntLit 65536)) "tmp" builder in
    let n23' = L.build_and i25 (expr builder (Int, SIntLit 65535)) "tmp" builder in 

    let i26 = L.build_call printn_func [| chord_format_str ; n21'; n22'; n23' |] "printf" builder in
    L.dump_value i26;
    let i27 = L.build_load i22 "b7" builder in 
    L.dump_value i27;  
    (* END SECOND ITERATION*)

    (*PRINT CLOSED BRACKET:*)
    let closed_bracket = L.build_call printn_func [| chord_closed_format_str |] "printf" builder in
    i26
    (* MEGAN'S IN PROGRESS NOTE--DOES NOT WORK AND DOESNT MAKE SENSE  
    let i1 = L.build_alloca chordp_node "b1" builder in 
    L.dump_value i1;    
    let i2 = L.build_alloca chordp_node "tmp" builder in 
    L.dump_value i2;
    let istore = L.build_store (expr builder e) i1 builder in
    L.dump_value istore;
    let i3 = L.build_load i1 "b2" builder in 
    L.dump_value i3;  
    let istore2 = L.build_store i3 i2 builder in
    L.dump_value istore2;
    let firstbranch = L.build_load i2 "b4" builder in
    L.dump_value firstbranch;
    let firstbranch2 = L.build_icmp L.Icmp.Ne firstbranch L.Constant.getNullValue "b5" builder in
    L.dump_value firstbranch2;
    i3
    (*
    let branch = L.build_br i3 in
    L.dump_value branch;
    i3*)
    (*
    let empty = L.const_int i32_t 0 in
    let i4 = L.build_in_bounds_gep i3 [|empty; empty|] "b4"  builder in
    L.dump_value i4;
    let i5 = L.build_load i4 "b5" builder in
    L.dump_value i5;

    (*PARSE IT AS A NOTE!!!*)
    let n1 = L.build_and i5 (expr builder (Int, SIntLit 4294967295)) "tmp" builder in 
    let n1' = L.build_sdiv n1 (expr builder (Int, SIntLit 16777216)) "tmp" builder in
    let n2 = L.build_and i5 (expr builder (Int, SIntLit 16777215)) "tmp" builder in 
    let n2' = L.build_sdiv n2 (expr builder (Int, SIntLit 65536)) "tmp" builder in
    let n3' = L.build_and i5 (expr builder (Int, SIntLit 65535)) "tmp" builder in 

    let i6 = L.build_call printn_func [| chord_format_str ; n1'; n2'; n3' |] "printf" builder in
    L.dump_value i6;
    let i7 = L.build_load i2 "b7" builder in 
    L.dump_value i7;  
    i6*)
*)

       | SBinop (e1, op, e2) ->
    let (t, _) = e1
    and e1' = expr builder e1
    and e2' = expr builder e2 in
    if t = A.Int then (match op with 
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
    | A.Comma   -> raise (Failure ("Not yet implemented: Comma"))
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
    | A.Comma   -> raise (Failure ("Not yet implemented: Comma"))
    ) e1' e2' "tmp" builder
      | SAsn (s, e) -> let e' = expr builder e in
                       let _  = L.build_store e' (lookup s) builder in e'
      (* Throw an error for any other expressions *)
      | SId s -> L.build_load (lookup s) s builder
      | _ -> to_imp (string_of_sexpr (A.Int,e))  
    in
    (* Deal with a block of expression statements, terminated by a return *)
    let add_terminal builder instr =
                           (* The current block where we're inserting instr *)
      match L.block_terminator (L.insertion_block builder) with
        Some _ -> ()
      | None -> ignore (instr builder) in
  
    let rec stmt builder = function
  SBlock sl -> List.fold_left stmt builder sl
      | SExpr e -> let _ = expr builder e in builder 
      | SReturn e -> let _ = match fdecl.styp with
                              A.Int -> L.build_ret (expr builder e) builder 
                            | _ -> to_imp (A.string_of_typ fdecl.styp)
                     in builder
      | SIf (predicate, then_stmt, else_stmt) ->
         let bool_val = expr builder predicate in
         (* Add "merge" basic block to our function's list of blocks *)
         let merge_bb = L.append_block context "merge" the_function in
         (* Partial function used to generate branch to merge block *) 
         let branch_instr = L.build_br merge_bb in

         (* Same for "then" basic block *)
         let then_bb = L.append_block context "then" the_function in
         (* Position builder in "then" block and build the statement *)
         let then_builder = stmt (L.builder_at_end context then_bb) then_stmt in
         (* Add a branch to the "then" block (to the merge block) 
           if a terminator doesn't already exist for the "then" block *)
         let () = add_terminal then_builder branch_instr in

         (* Identical to stuff we did for "then" *)
         let else_bb = L.append_block context "else" the_function in
         let else_builder = stmt (L.builder_at_end context else_bb) else_stmt in
         let () = add_terminal else_builder branch_instr in

         (* Generate initial branch instruction perform the selection of "then"
         or "else". Note we're using the builder we had access to at the start
         of this alternative. *)
         let _ = L.build_cond_br bool_val then_bb else_bb builder in
         (* Move to the merge block for further instruction building *)
          L.builder_at_end context merge_bb
         (* Generate the instructions for the function's body, 
          which mutates the_module *)
      | SWhile (predicate, body) ->
          (* First create basic block for condition instructions -- this will
          serve as destination in the case of a loop *)
         let pred_bb = L.append_block context "while" the_function in
          (* In current block, branch to predicate to execute the condition *)
         let _ = L.build_br pred_bb builder in

          (* Create the body's block, generate the code for it, and add a branch
          back to the predicate block (we always jump back at the end of a while
          loop's body, unless we returned or something) *)
         let body_bb = L.append_block context "while_body" the_function in
          let while_builder = stmt (L.builder_at_end context body_bb) body in
         let () = add_terminal while_builder (L.build_br pred_bb) in

          (* Generate the predicate code in the predicate block *)
         let pred_builder = L.builder_at_end context pred_bb in
         let bool_val = expr pred_builder predicate in

          (* Hook everything up *)
         let merge_bb = L.append_block context "merge" the_function in
         let _ = L.build_cond_br bool_val body_bb merge_bb pred_builder in
         L.builder_at_end context merge_bb
      (* Implement for loops as while loops! *)
      | SFor (e1, e2, e3, body) -> stmt builder
      ( SBlock [SExpr e1 ; SWhile (e2, SBlock [body ; SExpr e3]) ] )
      | s -> to_imp (string_of_sstmt s)
    in ignore(stmt builder (SBlock fdecl.sbody))
  (* Build each function (there should only be one for Hello World), 
     and return the final module *)
  in List.iter build_function_body functions; the_module

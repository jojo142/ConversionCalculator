(*
   Given a string num that contains only digits and an integer target, return all possibilities to insert the binary operators '+', '-', and/or '*' between the digits of num so that the resultant expression evaluates to the target value.
   Note that operands in the returned expressions should not contain leading zeros
*)

(* Approach: 
    Use a recursive backtracking approach. 
    We will start by trying all possible ways to insert operators 
    between the digits of the input number. 
    
    At each step, we can either insert a '+', '-', or '*' operator between the current digit 
    and the next digit, or we can concatenate the next digit to the previous one to form a 
    multi-digit number. We will keep track of the current expression and the current result 
    as we explore different possibilities.
*)



let add_operators num target =
  let n = String.length num in
  let result = ref [] in

  let rec backtrack expr index prev_val curr_val =
    if index = n then begin
      if curr_val = target then
        result := expr :: !result
    end else begin
      let curr_str = ref "" in
      for i = index to n - 1 do
        curr_str := !curr_str ^ String.make 1 num.[i];
        let curr_num = int_of_string !curr_str in
        if index = 0 then begin
          (* Starting from the first digit *)
          backtrack !curr_str (i + 1) curr_num curr_num
        end else begin
          (* Try different operators between the current and previous numbers *)
          backtrack (expr ^ "+" ^ !curr_str) (i + 1) curr_num (curr_val + curr_num);
          backtrack (expr ^ "-" ^ !curr_str) (i + 1) (-curr_num) (curr_val - curr_num);
          backtrack (expr ^ "*" ^ !curr_str) (i + 1) (prev_val * curr_num) (curr_val - prev_val + prev_val * curr_num)
        end;
        if curr_num = 0 then break; (* Avoid leading zeros *)
      done
    end
  in

  backtrack "" 0 0 0;
  !result

(* Test: *)
let () =
  let num1 = "123" in
  let target1 = 6 in
  Printf.printf "Example 1: %s\n" (String.concat "," (add_operators num1 target1));

  let num2 = "232" in
  let target2 = 8 in
  Printf.printf "Example 2: %s\n" (String.concat "," (add_operators num2 target2));

  let num3 = "3456237490" in
  let target3 = 9191 in
  Printf.printf "Example 3: %s\n" (String.concat "," (add_operators num3 target3))


let pascals_to_psi pascals = pascals /. 6895.0

let psi_to_pascals psi = psi *. 6895.0

let main () =
  Printf.printf "1. Pascals to PSI\n";
  Printf.printf "2. PSI to Pascals\n";
  Printf.printf "Enter your choice (1/2): ";

  let choice = read_int () in

  match choice with
  | 1 ->
      Printf.printf "Enter pascals: ";
      let pascals = read_float () in
      let psi = pascals_to_psi pascals in
      Printf.printf "%.2f pascals is equal to %.2f PSI\n" pascals psi
  | 2 ->
      Printf.printf "Enter PSI: ";
      let psi = read_float () in
      let pascals = psi_to_pascals psi in
      Printf.printf "%.2f PSI is equal to %.2f pascals\n" psi pascals
  | _ -> Printf.printf "Invalid choice\n"
  
  let () = main ()

let pounds_to_kilograms pounds = pounds /. 2.20462

let kilograms_to_pounds kilograms = kilograms *. 2.20462

let main () =
  Printf.printf "1. Pounds to Kilograms\n";
  Printf.printf "2. Kilograms to Pounds\n";
  Printf.printf "Enter your choice (1/2): ";

  let choice = read_int () in

  match choice with
  | 1 ->
      Printf.printf "Enter pounds: ";
      let pounds = read_float () in
      let kilograms = pounds_to_kilograms pounds in
      Printf.printf "%.2f pounds is equal to %.2f kilograms\n" pounds kilograms
  | 2 ->
      Printf.printf "Enter kilograms: ";
      let kilograms = read_float () in
      let pounds = kilograms_to_pounds kilograms in
      Printf.printf "%.2f kilograms is equal to %.2f pounds\n" kilograms pounds
  | _ -> Printf.printf "Invalid choice\n"

let () = main ()

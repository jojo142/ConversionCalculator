let miles_per_gallon_to_liters_per_100km mpg =
  let lphk = 235.215 /. mpg in
  lphk /. 100.0

let liters_per_100km_to_miles_per_gallon lphk =
  let mpg = 235.215 /. (lphk /. 100.0) in
  mpg

let main () =
  Printf.printf "1. Miles per gallon to Liters per 100 kilometers\n";
  Printf.printf "2. Liters per 100 kilometers to Miles per gallon\n";
  Printf.printf "Enter your choice (1/2): ";

  let choice = read_int () in

  match choice with
  | 1 ->
      Printf.printf "Enter miles per gallon: ";
      let mpg = read_float () in
      let lphk = miles_per_gallon_to_liters_per_100km mpg in
      Printf.printf "%.2f miles per gallon is equal to %.2f liters per 100 kilometers\n" mpg lphk
  | 2 ->
      Printf.printf "Enter liters per 100 kilometers: ";
      let lphk = read_float () in
      let mpg = liters_per_100km_to_miles_per_gallon lphk in
      Printf.printf "%.2f liters per 100 kilometers is equal to %.2f miles per gallon\n" lphk mpg
  | _ -> Printf.printf "Invalid choice\n"

let () = main ()

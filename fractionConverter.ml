let rec gcd a b =
  if b = 0 then a
  else gcd b (a mod b)

let simplify_fraction numerator denominator =
  let gcd_value = gcd numerator denominator in
  (numerator / gcd_value, denominator / gcd_value)

let main () =
  Printf.printf "Enter a fraction in the format 'numerator/denominator': ";
  let input = read_line () in

  match String.split_on_char '/' input with
  | [numerator_str; denominator_str] ->
      let numerator = int_of_string numerator_str in
      let denominator = int_of_string denominator_str in
      let simplified_num, simplified_denom = simplify_fraction numerator denominator in
      Printf.printf "Simplified fraction: %d/%d\n" simplified_num simplified_denom
  | _ ->
      Printf.printf "Invalid input. Please enter a fraction in the format 'numerator/denominator'\n"

let () = main ()

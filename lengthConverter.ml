let meters_to_feet meters = meters *. 3.28084

let feet_to_meters feet = feet /. 3.28084

let inches_to_meters inches = inches *. 0.0254

let meters_to_inches meters = meters /. 0.0254

let main_length () =
  Printf.printf "1. Meters to Feet\n";
  Printf.printf "2. Feet to Meters\n";
  Printf.printf "3. Inches to Meters\n";
  Printf.printf "4. Meters to Inches\n";
  Printf.printf "Enter your choice (1/2/3/4): ";

  let choice = read_int () in

  match choice with
  | 1 ->
      Printf.printf "Enter meters: ";
      let meters = read_float () in
      let feet = meters_to_feet meters in
      Printf.printf "%.2f meters is equal to %.2f feet\n" meters feet
  | 2 ->
      Printf.printf "Enter feet: ";
      let feet = read_float () in
      let meters = feet_to_meters feet in
      Printf.printf "%.2f feet is equal to %.2f meters\n" feet meters
  | 3 ->
      Printf.printf "Enter inches: ";
      let inches = read_float () in
      let meters = inches_to_meters inches in
      Printf.printf "%.2f inches is equal to %.2f meters\n" inches meters
  | 4 ->
      Printf.printf "Enter meters: ";
      let meters = read_float () in
      let inches = meters_to_inches meters in
      Printf.printf "%.2f meters is equal to %.2f inches\n" meters inches
  | _ -> Printf.printf "Invalid choice\n"

let () = main_length ()

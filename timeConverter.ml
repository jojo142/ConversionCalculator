let hours_to_minutes hours = hours *. 60.0

let minutes_to_hours minutes = minutes /. 60.0

let minutes_to_seconds minutes = minutes *. 60.0

let seconds_to_minutes seconds = seconds /. 60.0

let main_time () =
  Printf.printf "1. Hours to Minutes\n";
  Printf.printf "2. Minutes to Hours\n";
  Printf.printf "3. Minutes to Seconds\n";
  Printf.printf "4. Seconds to Minutes\n";
  Printf.printf "Enter your choice (1/2/3/4): ";

  let choice = read_int () in

  match choice with
  | 1 ->
      Printf.printf "Enter hours: ";
      let hours = read_float () in
      let minutes = hours_to_minutes hours in
      Printf.printf "%.2f hours is equal to %.2f minutes\n" hours minutes
  | 2 ->
      Printf.printf "Enter minutes: ";
      let minutes = read_float () in
      let hours = minutes_to_hours minutes in
      Printf.printf "%.2f minutes is equal to %.2f hours\n" minutes hours
  | 3 ->
      Printf.printf "Enter minutes: ";
      let minutes = read_float () in
      let seconds = minutes_to_seconds minutes in
      Printf.printf "%.2f minutes is equal to %.2f seconds\n" minutes seconds
  | 4 ->
      Printf.printf "Enter seconds: ";
      let seconds = read_float () in
      let minutes = seconds_to_minutes seconds in
      Printf.printf "%.2f seconds is equal to %.2f minutes\n" seconds minutes
  | _ -> Printf.printf "Invalid choice\n"

let () = main_time ()

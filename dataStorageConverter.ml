let bytes_to_kilobytes bytes = bytes /. 1024.0

let kilobytes_to_bytes kilobytes = kilobytes *. 1024.0

let main () =
  Printf.printf "1. Bytes to Kilobytes\n";
  Printf.printf "2. Kilobytes to Bytes\n";
  Printf.printf "Enter your choice (1/2): ";

  let choice = read_int () in

  match choice with
  | 1 ->
      Printf.printf "Enter bytes: ";
      let bytes = read_float () in
      let kilobytes = bytes_to_kilobytes bytes in
      Printf.printf "%.2f bytes is equal to %.2f kilobytes\n" bytes kilobytes
  | 2 ->
      Printf.printf "Enter kilobytes: ";
      let kilobytes = read_float () in
      let bytes = kilobytes_to_bytes kilobytes in
      Printf.printf "%.2f kilobytes is equal to %.2f bytes\n" kilobytes bytes
  | _ -> Printf.printf "Invalid choice\n"

let () = main ()

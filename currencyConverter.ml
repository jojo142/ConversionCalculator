let convert_to_usd amount rate =
  amount *. rate

let main () =
  Printf.printf "Enter the amount in your currency: ";
  let amount = read_float () in
  Printf.printf "Enter the exchange rate (1 USD to your currency): ";
  let rate = read_float () in

  let usd_amount = convert_to_usd amount rate in
  Printf.printf "%.2f USD\n" usd_amount

let () = main ()

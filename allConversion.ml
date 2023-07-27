module Conversion = struct
  (* Length/Distance Conversion *)
  let meters_to_feet (meters : float) : float =
    meters *. 3.28084

  let feet_to_meters (feet : float) : float =
    feet *. 0.3048

  (* Temperature Conversion *)
  let celsius_to_fahrenheit (celsius : float) : float =
    (celsius *. 9.0 /. 5.0) +. 32.0

  let fahrenheit_to_celsius (fahrenheit : float) : float =
    (fahrenheit -. 32.0) *. 5.0 /. 9.0

  (* Weight/Mass Conversion *)
  let kilograms_to_pounds (kilograms : float) : float =
    kilograms *. 2.20462

  let pounds_to_kilograms (pounds : float) : float =
    pounds *. 0.453592

  (* Volume Conversion *)
  let liters_to_gallons (liters : float) : float =
    liters *. 0.264172

  let gallons_to_liters (gallons : float) : float =
    gallons *. 3.78541

  (* Energy Conversion *)
  let joules_to_calories (joules : float) : float =
    joules *. 0.239006

  let calories_to_joules (calories : float) : float =
    calories *. 4.184

  (* Pressure Conversion *)
  let pascals_to_psi (pascals : float) : float =
    pascals /. 6895.0

  let psi_to_pascals (psi : float) : float =
    psi *. 6895.0

  (* Speed Conversion *)
  let meters_per_second_to_mph (mps : float) : float =
    mps *. 2.23694

  let mph_to_meters_per_second (mph : float) : float =
    mph *. 0.44704

  (* Cooking Conversion *)
  let cups_to_tablespoons (cups : float) : float =
    cups *. 16.0

  let tablespoons_to_cups (tablespoons : float) : float =
    tablespoons /. 16.0

  (* Data Storage Conversion *)
  let bytes_to_kilobytes (bytes : float) : float =
    bytes /. 1024.0

  let kilobytes_to_bytes (kilobytes : float) : float =
    kilobytes *. 1024.0

  (* Fuel Consumption Conversion *)
  let miles_per_gallon_to_liters_per_100_km (mpg : float) : float =
    235.215 /. mpg

  let liters_per_100_km_to_miles_per_gallon (l_100km : float) : float =
    235.215 /. l_100km
end

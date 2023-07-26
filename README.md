# ConversionCalculator

The OCaml module provides a collection of functions for performing various unit conversions. It includes functions for converting lengths between meters and feet, temperatures between Celsius and Fahrenheit, weights/masses between kilograms and pounds, volumes between liters and gallons, energies between joules and calories, pressures between pascals and PSI, speeds between meters per second and miles per hour, cooking measurements between cups and tablespoons, data storage between bytes and kilobytes, and fuel consumption between miles per gallon and liters per 100 kilometers. These functions allow easy and accurate conversions between different units, making it convenient for beginner like me. 

I have solved few leetcode problems using OCaml. 

``` bash
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
```
### How to compile and execute?
To compile and run each OCaml program, follow the same steps as before:
- Make sure OCaml and utop are installed on your system.
- Open a terminal and navigate to the directory containing the .ml files.
- Compile the OCaml code using the ocamlc compiler:

``` bash
ocamlopt -o HitCounter HitCounter.ml
./HitCounter
```
```bash
ocamlopt -o ExpressionAddOperators ExpressionAddOperators.ml
./ExpressionAddOperators
```
```bash
ocamlopt -o WalkingRobotSimulation WalkingRobotSimulation.ml
./WalkingRobotSimulation
```
```bash
ocamlopt -o SnakeGame SnakeGame.ml
./SnakeGame
```
```bash
ocamlopt -o weightConvertor weightConvertor.ml
./weightConvertor
```
```bash
ocamlopt -o pressureConversion pressureConversion.ml
./pressureConversion
```
```bash
ocamlopt -o fuelConsumptionConverter fuelConsumptionConverter.ml
./fuelConsumptionConverter
```
```bash
ocamlopt -o dataStorageConverter dataStorageConverter.ml
./dataStorageConverter
```
```bash
ocamlopt -o currencyConverter currencyConverter.ml
./currencyConverter
```
```bash
ocamlopt -o fractionConverter fractionConverter.ml
./fractionConverter
```
```bash
ocamlopt -o timeConverter timeConverter.ml
./timeConverter
```
```bash
ocamlopt -o lengthConverter lengthConverter.ml
./lengthConverter
```


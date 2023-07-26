(*
   Question: A robot on an infinite XY-plane starts at point (0, 0) facing north. The robot can receive a sequence of these three possible types of commands:
    -2: Turn left 90 degrees.
    -1: Turn right 90 degrees.
    1 <= k <= 9: Move forward k units, one unit at a time.
    Some of the grid squares are obstacles. The ith obstacle is at grid point obstacles[i] = (xi, yi). If the robot runs into an obstacle, then it will instead stay in its current location and move on to the next command.

    Return the maximum Euclidean distance that the robot ever gets from the origin squared (i.e. if the distance is 5, return 25).
  *)
(* Approach:
   we can simulate the robot's movements step by step. 
   We will keep track of the current position of the robot and its direction (north, east, south, or west). 
   We will also maintain a set of obstacles for efficient collision detection.
*)



type point = int * int

module PointSet = Set.Make(struct
  type t = point
  let compare = compare
end)

let get_distance_squared (x, y) = x * x + y * y

let robot_max_distance_squared commands obstacles =
  let dx = [|0; 1; 0; -1|] in
  let dy = [|1; 0; -1; 0|] in
  let rec move_robot (x, y) direction max_distance_remaining =
    match commands with
    | [] -> max_distance_remaining
    | cmd :: rest ->
      match cmd with
      | -2 -> (* Turn left 90 degrees *)
        let new_direction = (direction + 3) mod 4 in
        move_robot (x, y) new_direction max_distance_remaining
      | -1 -> (* Turn right 90 degrees *)
        let new_direction = (direction + 1) mod 4 in
        move_robot (x, y) new_direction max_distance_remaining
      | k when k >= 1 && k <= 9 -> (* Move forward k units *)
        let rec move_forward k distance =
          if k = 0 || PointSet.mem (x + dx.(direction), y + dy.(direction)) obstacles then
            distance
          else
            let new_x, new_y = x + dx.(direction), y + dy.(direction) in
            let new_distance = get_distance_squared (new_x, new_y) in
            move_forward (k - 1) new_distance
        in
        let new_distance = move_forward k max_distance_remaining in
        move_robot (x + dx.(direction), y + dy.(direction)) direction (max max_distance_remaining new_distance)
      | _ -> failwith "Invalid command"
  in
  move_robot (0, 0) 0 0
  
(* Test
    This code calculates the maximum Euclidean distance that the robot ever gets from the origin squared as requested in the problem statement.
    *)

let () =
let commands1 = [4; -1; 3] in
let obstacles1 = [] in
Printf.printf "Example 1: %d\n" (robot_max_distance_squared commands1 obstacles1);

let commands2 = [4; -1; 4; -2; 4] in
let obstacles2 = [(2, 4)] in
Printf.printf "Example 2: %d\n" (robot_max_distance_squared commands2 obstacles2);

let commands3 = [6; -1; -1; 6] in
let obstacles3 = [] in
Printf.printf "Example 3: %d\n" (robot_max_distance_squared commands3 obstacles3);

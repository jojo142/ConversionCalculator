(* 
  LeetCode: Snake Game Design
   SnakeGame class, we can use a deque (double-ended queue) to represent the snake. 
   We'll use a set to keep track of the snake's positions for efficient collision detection. 
   The snake's head will be at the front of the deque, and the tail will be at the back.
*)

type point = int * int

module PointSet = Set.Make(struct
  type t = point
  let compare = compare
end)

type snake_game = {
  width: int;
  height: int;
  food: point list;
  snake: point list;
  snake_set: PointSet.t;
  mutable score: int;
}

let create_snake_game width height food =
  {
    width;
    height;
    food;
    snake = [(0, 0)];
    snake_set = PointSet.singleton (0, 0);
    score = 0;
  }

let move_snake_game game direction =
  let dx, dy =
    match direction with
    | "U" -> (-1, 0)
    | "D" -> (1, 0)
    | "L" -> (0, -1)
    | "R" -> (0, 1)
    | _ -> failwith "Invalid direction"
  in
  let head_x, head_y = List.hd game.snake in
  let new_head_x, new_head_y = head_x + dx, head_y + dy in

  (* Check if the new head collides with the wall *)
  if new_head_x < 0 || new_head_x >= game.height || new_head_y < 0 || new_head_y >= game.width then
    -1
  else
    let new_head = (new_head_x, new_head_y) in
    let new_snake =
      if List.mem new_head game.snake then
        (* The new head collides with the snake's body *)
        []
      else
        (* Add the new head to the snake *)
        new_head :: game.snake
    in
    let new_snake_set =
      List.fold_left (fun set point -> PointSet.add point set) PointSet.empty new_snake
    in
    (* Check if the new head collides with the food *)
    match game.food with
    | [] ->
        (* No more food left, keep the snake moving *)
        game.snake <- List.tl new_snake;
        game.snake_set <- PointSet.remove (List.hd game.snake) game.snake_set;
        game.score
    | (food_x, food_y) :: rest_food ->
        if new_head_x = food_x && new_head_y = food_y then begin
          (* The snake eats the food *)
          game.snake <- new_snake;
          game.snake_set <- new_snake_set;
          game.score <- game.score + 1;
          game.food <- rest_food;
          game.score
        end else begin
          (* The snake keeps moving *)
          game.snake <- List.tl new_snake;
          game.snake_set <- PointSet.remove (List.hd game.snake) game.snake_set;
          game.score
        end



(*Test*)
let () =
  let game = create_snake_game 3 2 [(1, 2); (0, 1)] in
  Printf.printf "Initial Score: %d\n" game.score;
  Printf.printf "Move 'R', Score: %d\n" (move_snake_game game "R");
  Printf.printf "Move 'D', Score: %d\n" (move_snake_game game "D");
  Printf.printf "Move 'R', Score: %d\n" (move_snake_game game "R");
  Printf.printf "Move 'U', Score: %d\n" (move_snake_game game "U");
  Printf.printf "Move 'L', Score: %d\n" (move_snake_game game "L");
  Printf.printf "Move 'U', Score: %d\n" (move_snake_game game "U");


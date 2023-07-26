(*Design a hit counter which counts the number of hits received in the past 5 minutes (i.e., the past 300 seconds).

Your system should accept a timestamp parameter (in seconds granularity), and you may assume that calls are being made to the system in chronological order (i.e., timestamp is monotonically increasing). Several hits may arrive roughly at the same time.

Implement the HitCounter class:

HitCounter() Initializes the object of the hit counter system.
void hit(int timestamp) Records a hit that happened at timestamp (in seconds). Several hits may happen at the same timestamp.
int getHits(int timestamp) Returns the number of hits in the past 5 minutes from timestamp (i.e., the past 300 seconds).*)


(* Approach:
  Use a queue to store the timestamps of hits that occurred within the 
  last 300 seconds. 
  We will also maintain a variable to keep track of the total number of hits.
  When a hit is recorded, we will enqueue its timestamp and increment the total hits count. Before returning the number of hits for a specific timestamp, we will dequeue timestamps that are older than 300 seconds from the front of the queue and decrement the total hits count accordingly.
*)

class hit_counter () =
  let queue = Queue.create () in
  let total_hits = ref 0 in

  method hit (timestamp : int) : unit =
    Queue.push timestamp queue;
    total_hits := !total_hits + 1;
    while not (Queue.is_empty queue) &&
          Queue.front queue < timestamp - 300 do
      ignore (Queue.pop queue);
      total_hits := !total_hits - 1;
    done

  method get_hits (timestamp : int) : int =
    let threshold = timestamp - 300 in
    while not (Queue.is_empty queue) &&
          Queue.front queue <= threshold do
      ignore (Queue.pop queue);
      total_hits := !total_hits - 1;
    done;
    !total_hits

(* Test: *)
  let () =
  let hit_counter = new hit_counter () in
  hit_counter#hit 1;
  hit_counter#hit 2;
  hit_counter#hit 3;
  Printf.printf "getHits(4): %d\n" (hit_counter#get_hits 4);
  hit_counter#hit 300;
  Printf.printf "getHits(300): %d\n" (hit_counter#get_hits 300);
  Printf.printf "getHits(301): %d\n" (hit_counter#get_hits 301)

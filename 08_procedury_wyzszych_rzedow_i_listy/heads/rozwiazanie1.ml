open List;;

let get_head l =
  match l with
    | [] -> []
    | h :: t -> [h];; 

let heads l = flatten(map (get_head) l);;

assert (heads [[1;2;3]; [2;2]; []; [3;42]; [4]; []] = [1; 2; 3; 4]);;
assert (heads [[]] = []);;
let sumy lst =
  let add (sum, acc) head = 
    ((sum + head),(sum + head) :: acc)
  in List.rev (snd (List.fold_left add (0, []) lst));;

assert (sumy [1; 2; 3; 7; 6; 7; 8] = [1; 3; 6; 13; 19; 26; 34]);;
assert(sumy [1; 5; 2; 7; 12; 10; 5] = [1; 6; 8; 15; 27; 37; 42]);;

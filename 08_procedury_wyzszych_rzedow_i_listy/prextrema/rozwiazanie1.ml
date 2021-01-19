open List;;

let prextrema l = 
  if l = [] then [] else
  let extrema (min, max, list) h =
    if h > max then (min, h, h :: list)
    else if h < min then (h, max, h :: list)
    else (min, max, list)
  in let _, _, odp = (fold_left extrema ((hd l), (hd l), [hd l]) (tl l)) in rev odp;;

assert (prextrema [-2; 1; 0; 1; 3; 2; -1; 5; 4; -3; 2; 1; 7] = [-2; 1; 3; 5; -3; 7]);;
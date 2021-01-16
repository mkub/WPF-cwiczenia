open List;;

let wzrost l = 
  if l = [] then [] else 
  let podciag (globalny, dl_g, lokalny, dl_l, ostatni) h =
    if ostatni < h then 
      if dl_g < dl_l + 1 then ((h :: lokalny), (dl_l + 1), (h :: lokalny), (dl_l + 1), h)
      else (globalny, dl_g, (h :: lokalny), (dl_l + 1), h)
    else (globalny, dl_g, [h], 1, h)
  in let odp, _, _, _, _ = (fold_left podciag ([hd l], 1, [hd l], 1, hd l) (tl l)) in rev odp;;

assert (wzrost [3; 4; 0; -1; 2; 3; 7; 6; 7; 8] = [-1; 2; 3; 7]);;
assert (wzrost [] = []);;
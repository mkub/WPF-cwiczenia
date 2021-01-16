open List;;

let zlecenia pary = 
  if pary = [] then [] else
  let aux (obecny_moment, wyniki) h = 
    if obecny_moment <= fst h then ((fst h + snd h), (snd h) :: wyniki)
    else ((obecny_moment + snd h), (obecny_moment - fst h + snd h) :: wyniki)
  in rev(snd(fold_left aux (((fst (hd pary) ) + (snd (hd pary))), [(snd (hd pary))]) (tl pary)));;

assert(zlecenia [(-1, 1); (2, 2); (3, 3); (4, 2); (10, 2)] = [1; 2; 4; 5; 2]);;
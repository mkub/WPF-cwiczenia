let wybory l = 
  let licz (obecny, liczba_o, kandydat, liczba_k) h =
    if h = kandydat then
      if liczba_o <= liczba_k + 1 then (kandydat, liczba_k + 1, kandydat, liczba_k + 1)
      else (obecny, liczba_o, kandydat, liczba_k + 1)
    else if liczba_o <= liczba_k + 1 then (kandydat, liczba_k, h, 1)
    else (obecny, liczba_o, h, 1)
  in let odp, _, _, _ = fold_left licz (hd l, 1, hd l, 1) (tl l) in odp;;

assert(wybory [1;1;1;2;2;2;2] = 2);;
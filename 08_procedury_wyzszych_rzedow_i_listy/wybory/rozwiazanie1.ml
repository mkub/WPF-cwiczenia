open List;;

let wybory l = 
  	let licz (obecny, liczba_o, kandydat, liczba_k) h =
  		let (nowy_kandydat, nowa_liczba_k) = 
    		if h = kandydat then (kandydat, liczba_k + 1)
    		else (h, 1)
    	in
      		if liczba_o <= nowa_liczba_k then 
      			(nowy_kandydat, nowa_liczba_k, nowy_kandydat, nowa_liczba_k)
      		else 
      			(obecny, liczba_o, nowy_kandydat, nowa_liczba_k)
  	in 
  		let odp, _, _, _ = fold_left licz (hd l, 1, hd l, 1) (tl l) 
  		in odp;;

assert (wybory [1; 1; 2; 2; 2; 3; 3] = 2);;
assert (wybory [0; 0; 0; 1; 1; 1; 2; 2; 3] = 1);;
assert (wybory [42] = 42);;
assert (wybory [1; 2] = 2)
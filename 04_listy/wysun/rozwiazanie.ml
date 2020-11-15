open List


(* Dzieli listę na parę: lista powtórzeń głowy z początku listy, pozostałe elementy *)
let rec get_multiple lista =
    let rec scan h acc lst =
        match lst with
        | [] -> (acc, [])
        | head::tail ->
            if h = head then scan h (head::acc) tail
            else (acc, lst)
    in
        if lista = [] then ([], [])
        else scan (hd lista) [] lista;;

assert (get_multiple [] = ([], []));;
assert (get_multiple [3; 4; 8; 6] = ([3], [4; 8; 6]));;
assert (get_multiple [2; 2; 2; 3; 3; 4] = ([2; 2; 2], [3; 3; 4]));;


(* Rozwiązanie zad. 1 *)
let wysun lista =
    let rec scan lst singles multiples =
        match lst with
        | [] -> rev multiples @ rev singles
        | [h] -> scan [] (h::singles) multiples
        | h1::h2::tail ->
            if h1 = h2 then
                let (heads, rest) = get_multiple lst
                in scan rest singles (heads @ multiples)
            else scan (tl lst) (h1::singles) multiples
    in scan lista [] [];;

assert (wysun [] = []);;
assert (wysun [0] = [0]);;
assert (wysun [1; 1] = [1; 1]);;
assert (wysun [-1; 0; 3; 5] = [-1; 0; 3; 5]);;
assert (wysun [1; 2; 2] = [2; 2; 1]);;
assert (wysun [4; 5; 8] = [4; 5; 8]);;
assert (wysun [1; 2; 2; 3; 3; 3; 5] = [2; 2; 3; 3; 3; 1; 5]);;
assert (wysun [1; 2; 2; 3; 4; 5; 5; 6; 6; 6; 7] = [2; 2; 5; 5; 6; 6; 6; 1; 3; 4; 7]);;
assert (wysun [-4; -4; -2; 0; 0; 1; 3; 3; 3] = [-4; -4; 0; 0; 3; 3; 3; -2; 1]);;

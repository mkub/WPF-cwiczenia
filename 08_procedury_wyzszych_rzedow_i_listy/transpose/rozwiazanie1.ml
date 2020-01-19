open List;;

let transpose m = 
    let add_layer xs =
        map (fun x -> [x]) xs
    and add_row x xs = 
        map2 cons x xs in
    let step acc row = add_row row acc in
    map rev (fold_left step (add_layer (hd m)) (tl m));;

assert (transpose [[1; 2]; [5; 3]; [0; 1]] = [[1; 5; 0]; [2; 3; 1]]);;

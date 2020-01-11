type tree =
    Node of tree * tree |
    Null;;

let srednica t = 
    let rec _srednica = function
        | Null -> (0, 0)
        | Node (l, r) ->
            let (lm, ld) = _srednica l
            and (rm, rd) = _srednica r
            in (max (max lm rm) (ld + rd + 2), max ld rd + 1)
    in fst (_srednica t);;


type tree = Node of tree * tree | Null;;

let srednica t = 
    let rec pom = function
        | Null -> (0, 0)
        | Node (l, r) ->
            let (lm, ld) = pom l
            and (rm, rd) = pom r in
            (max (max lm rm) (ld + rd + 2), max ld rd + 1) in
    fst (pom t);;

type 'a tree = Node of 'a * 'a tree list;;

let rosnaca t =
    let rec pom (Node (v, children)) = 
        let step (best, from_me) (Node (cv, _) as s) = 
            let (his_best, from_him) = pom s in
            if v < cv then
                (max best his_best, max from_me (from_him + 1))
            else
                (max best his_best, from_me) in
        let (best, from_me) = List.fold_left step (0, 1) children in
        (max best from_me, from_me) in
    fst (pom t);;


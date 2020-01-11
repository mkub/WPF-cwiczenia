let shuffle xs ys = 
    let rec _shuffle ans xs ys =
        match xs with
            | [] -> ans @ (List.rev ys)
            | x :: rest -> _shuffle (x :: ans) ys rest
    in List.rev (_shuffle [] xs ys)

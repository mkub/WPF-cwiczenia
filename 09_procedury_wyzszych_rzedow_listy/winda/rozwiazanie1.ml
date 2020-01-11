let winda w ciezary = 
    let step (cnt, sum) x =
        if sum + x > w then
            (cnt + 1, x)
        else
            (cnt, sum + x)
    in
    fst (List.fold_left step (0, 0) ciezary)

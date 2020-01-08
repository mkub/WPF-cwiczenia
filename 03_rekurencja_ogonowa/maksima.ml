let maksima f l p =
    let check x =
        if f (x - 1) <= f x && f x >= f (x + 1) 
        then 1
        else 0
    in
    let rec count cnt i =
        if i > p then
            cnt
        else 
            count (cnt + check i) (i + 1)
    in count 0 l;;

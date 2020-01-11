let p f n = 
    let rec step best (x, l) i = 
        if i = n + 1 then
            best
        else let acc = if x < 0 then
                           (f i, 1)
                       else (x + f i, l + 1)
             in step (max best acc) acc (i + 1)
    in snd (step (f 1, 1) (0, 0) 1);;

let sqrt x = 
    let rec aux s k = 
        let nw = 2*(k + 1) - 1
        in if s + nw <= x
           then aux (s + nw) (k + 1)
           else k
    in aux 0 0;;

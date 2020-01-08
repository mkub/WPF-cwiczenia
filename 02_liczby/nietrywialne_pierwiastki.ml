let nontrivial_root n = 
    let check x = x * x mod n = 1
    in let rec aux x = 
        if x < n - 1
        then check x || aux (x + 1)
        else false;
    in aux 2;;
    
let reverse_number n =
    let rec aux res rem = 
        if rem = 0 then 
            res
        else 
            aux (res * 10 + rem mod 10) (rem / 10)
    in
    aux 0 n

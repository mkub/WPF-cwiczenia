let rzadkie n = 
    let rec check n =
        if n = 0 then 
            true
        else 
            not (n mod 4 = 3) && check (n / 2)
    and aux cnt n =
        if n = 0 then 
            cnt
        else 
            aux (cnt + if check n then 1 else 0) (n - 1)
    in
    aux 0 n;;

assert (rzadkie 42 = 20);;

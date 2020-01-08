let rec rzadkie n =
    let rec check n =
        if n = 0
        then true
        else not (n mod 4 = 3) && check (n / 2)
    in if check (n + 1)
       then n + 1 
       else rzadkie (n + 1);;

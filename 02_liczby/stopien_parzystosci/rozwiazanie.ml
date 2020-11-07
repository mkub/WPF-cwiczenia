let stopien x =
    let rec pom k licz =
        if k = 0 then -1 
        else if k mod 2 = 0 then pom (k / 2) (licz + 1)
        else licz
    in pom x 0;;

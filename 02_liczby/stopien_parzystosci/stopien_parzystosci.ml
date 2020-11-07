let abs x = if x >= 0 then x else -x;;

let stopien x =
        let rec pom k licz =
                if k = 0 then -1 else
                        if k mod 2 = 1 then licz
                        else pom (k / 2) (licz + 1)
        in pom (abs x) 0;;

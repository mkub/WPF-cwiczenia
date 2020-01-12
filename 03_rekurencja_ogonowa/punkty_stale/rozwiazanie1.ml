let INT_MIN = -100
and INT_MAX = 100;;

let punkt_staly f =
    let rec binsearch l r =
        if l = r then l else
        let mid = (l + r) / 2 in 
        if f mid > mid then
            binsearch (mid + 1) r
        else
            binsearch l mid in
    binsearch INT_MIN INT_MAX;;

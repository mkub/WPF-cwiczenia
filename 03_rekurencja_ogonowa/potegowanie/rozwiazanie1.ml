let power base exp =
    let rec pow acc base exp = 
        if exp = 0 then
            acc
        else 
            let new_acc = 
                if exp mod 2 = 0 then
                    acc
                else acc * base in
            pow new_acc (base * base) (exp / 2)
    pow 1 base exp;;

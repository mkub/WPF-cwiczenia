let power base exp =
    let rec _pow acc base exp = 
        if exp = 0 then
            acc
        else let new_acc = if exp mod 2 = 0
                           then acc
                           else acc * base
             in _pow new_acc (base * base) (exp / 2)
    in _pow 1 base exp;;

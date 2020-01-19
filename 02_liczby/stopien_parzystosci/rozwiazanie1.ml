let rec parity = function
    | 0 -> -1
    | x -> 
        if x mod 2 = 1 then 
            0
        else 
            1 + parity (x / 2)

let is_prime n = 
    match n with
    | 0 -> false
    | 1 -> false
    | n -> 
        let rec aux k =
            if k * k <= n then 
                n mod k != 0 && aux (k + 1)
            else true in
        aux 2;; 

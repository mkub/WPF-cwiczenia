(* cwiczenie 3 *)
let sqrt x = 
    let rec aux s k = 
        let nw = 2*(k + 1) - 1
        in if s + nw <= x
           then aux (s + nw) (k + 1)
           else k
    in aux 0 0;;


let is_prime n = match n with
    | 0 -> false
    | 1 -> false
    | n -> let rec aux k =
               if k * k <= n
               then n mod k != 0 && aux (k + 1)
               else true
           in aux 2;; 
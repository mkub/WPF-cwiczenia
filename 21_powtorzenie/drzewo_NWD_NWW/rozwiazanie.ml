open Utils;;

type expr =
    NWD of expr * expr |
    NWW of expr * expr |
    Number of int;;

let wstaw (e, n) =
    let rec evaluate n t = 
        match t with
        | NWD (p, q) -> gcd (evaluate n p) (evaluate n q)
        | NWW (p, q) -> lcm (evaluate n p) (evaluate n q)
        | Number x -> if x = 0 then n else x in
    let res_1 = evaluate 1 e
    and res_n = evaluate n e in
    if (res_n mod res_1 = 0) && (res_n = n) then
        let step acc x =
            if res_1 mod x = 0 then
                acc
            else
                acc * x in
        List.fold_left step 1 (factorize n)
    else 0;;

let t = NWW (NWW (Number 2, Number 0), NWD (Number 0, Number 49))
and n = 42;;
assert (wstaw (t, n) = 21);;

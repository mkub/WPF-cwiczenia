(* Zwraca rozkład [p_1 ^ a_1, ..., p_k ^ a_k] liczby n *)
let factorize n = 
    let factors = ref []
    and n = ref n
    and d = ref 2 in
    while !d * !d <= !n do
        if !n mod !d = 0 then
        begin
            let div = ref 1 in
            while !n mod !d = 0 do
                div := !div * !d;
                n := !n / !d
            done;
            factors := !div :: !factors
        end;
        d := !d + 1
    done;
    if !n <> 1 then
        factors := !n :: !factors;
    !factors;;

let rec gcd a b = 
    if b = 0 then
        a
    else
        gcd b (a mod b);;

let lcm a b =
    a * b / gcd a b;;

type expr =
    NWD of expr * expr |
    NWW of expr * expr |
    Number of int;;

let wstaw (e, n) =
    let rec evaluate n = function
        | NWD (p, q) -> gcd (evaluate n p) (evaluate n q)
        | NWW (p, q) -> lcm (evaluate n p) (evaluate n p)
        | Number x ->
            if x = 0 then n else x in
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

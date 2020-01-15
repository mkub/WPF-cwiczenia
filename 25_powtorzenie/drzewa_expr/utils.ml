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


assert (factorize 42 = [7; 3; 2]);;
assert (lcm 42 420 = 420);;
assert (gcd 48 32 = 16);;

let last_bit n = n mod 2;;

let rec encode a b =
    if a = 0 && b = 0 then 
        0
    else 
        4 * encode (a / 2) (b / 2) + 2 * last_bit a + last_bit b;;

let rec decode enc = 
    if enc = 0 then 
        (0, 0)
    else 
        let (a, b) = decode (enc / 4)
        and a_bit = last_bit (enc / 2)
        and b_bit = last_bit enc in
        (a*2 + a_bit, b*2 + b_bit);;

let decode_first enc = fst (decode enc);;

let decode_secod enc = snd (decode enc);;

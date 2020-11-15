open List;;

let bonifacy n bits =
    let rec boni a b c bts i =
        if i = n then a else
        if bts = [] then boni a b c bits i else
        if i < 2 then boni 1 a b (tl bts) (i + 1) else
        if hd bts = 0 then
            boni (a + b) a b (tl bts) (i + 1)
        else
            boni (a + c) a b (tl bts) (i + 1)
    in boni 0 0 0 (tl bits) 0;;

assert (map (fun i -> bonifacy i [1; 1; 0; 1]) [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12] = [0; 1; 1; 1; 2; 3; 5; 7; 10; 15; 25; 35; 50]);;
assert (map (fun i -> bonifacy i [0; 0; 0]) [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = [0; 1; 1; 2; 3; 5; 8; 13; 21; 34; 55]);;
assert (map (fun i -> bonifacy i [1; 0; 0; 1]) [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12] = [0; 1; 1; 1; 2; 3; 5; 7; 10; 17; 27; 37; 54]);;

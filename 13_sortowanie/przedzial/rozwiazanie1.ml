let przedzial xs r = 
    let rec gasienica i j xs ys =
        match xs, ys with
            | [], ys -> 0
            | _, [] -> 0
            | (x :: _xs), (y :: _ys) ->
                if y <= x + 2 * r then
                    max (j-i+1) (gasienica i (j + 1) xs _ys)
                else
                    gasienica (i + 1) j _xs ys
    in
    let sorted = List.sort compare xs in
    gasienica 0 0 sorted sorted;;

assert (przedzial [2; -2; 5; -1; 11; 8; 4; 5; 8; 7] 2 = 6);;

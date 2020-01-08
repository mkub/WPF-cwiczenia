let ekstrema xs = 
    let unique xs = 
        let step x = function
            | [] -> [x]
            | (y :: rest as acc) ->
                if y = x then
                    acc
                else
                    x :: acc in
        List.fold_right step xs [] in
    let diff xs =
        let step (lst, acc) x = (x, (x - lst) :: acc) in 
        let (_, res) = 
            List.fold_left step (List.hd xs, []) (List.tl xs) in
        res in
    let ys = 0 :: diff (unique xs) @ [0] in
    let step (cnt, lst) x =
        let _cnt = 
            if x * cnt <= 0 then
                cnt + 1
            else cnt in
        (_cnt, x) in
    let (res, _) = List.fold_left step (0, List.hd ys) (List.tl ys) in
    res;;

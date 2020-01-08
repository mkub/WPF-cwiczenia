let widoczne xs =
    let sum = List.fold_left (+) 0 xs in
    let step (cur_sum, acc) x =
        let _acc =
            if cur_sum = sum - x - cur_sum then
                x :: acc
            else acc in
        (cur_sum + x, _acc) in
    let (_, res) = List.fold_left step (0, []) xs in
    res;;


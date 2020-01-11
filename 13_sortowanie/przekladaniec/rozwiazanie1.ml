open List

let przekladaniec xs =
    let xs = sort compare xs in
    let sum_diff xs = 
        fold_left (fun acc (x, y) -> acc + max 0 (y - x)) 0 xs in
    let zipped = combine xs (rev xs)
    and zipped_shifted = combine (tl xs) (rev (tl xs)) in
    sum_diff zipped + sum_diff zipped_shifted;;

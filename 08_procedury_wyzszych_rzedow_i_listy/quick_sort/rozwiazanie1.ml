let rec quick_sort = function
    | [] -> []
    | (x::xs) -> 
        let smaller = quick_sort (List.filter (fun a -> a <= x) xs)
        and bigger  = quick_sort (List.filter (fun a -> a > x) xs) in 
        smaller @ [x] @ bigger

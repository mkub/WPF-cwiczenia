open List

let podzial = function
    | [] -> []
    | x :: xs ->
        let step (lst :: rest as acc) nw = 
            let lst_elem = hd lst in
            if (lst_elem = 0 && nw = 0) || lst_elem * nw > 0 then
                (nw :: lst) :: rest
            else
                [nw] :: acc
        in
        rev (map rev (fold_left step [[x]] xs))



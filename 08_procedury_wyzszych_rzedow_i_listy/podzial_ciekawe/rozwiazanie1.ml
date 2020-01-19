let podzial xs = 
    let step x = function
        | [] -> [[x]]
        | (lst :: rest as acc) ->
            if List.hd lst = x then
                [x] :: acc
            else (x :: lst) :: rest in
    List.fold_right step xs [];;

assert (podzial [3;2;2;5;7;5;4;4;3;1] = [[3;2];[2;5;7;5;4];[4;3;1]]);;

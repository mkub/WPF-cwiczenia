let log2 x = 
    let rec _log2 acc x =
        if x mod 2 = 0 then
            _log2 (acc + 1) (x / 2)
        else
            acc
    in _log2 0 x;;

let repeat x n =
    let rec _repeat acc n = 
        if n = 0 then
            acc
        else
            _repeat (x :: acc) (n - 1)
    in _repeat [] n;;


let dekompresuj data =
    let expand x = 
        let i = log2 x + 1
        in let k = ((x lsr (i - 1)) + 1) / 2 
        in repeat k i
    in let rec _dekomp acc = function
        | [] -> List.rev acc
        | x :: xs -> _dekomp (expand x @ acc) xs
    in _dekomp [] data;;


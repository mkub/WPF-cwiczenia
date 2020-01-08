type tree = Leaf | Node of tree * tree;;
type sizedTree = SLeaf of int | SNode of int * sizedTree * sizedTree;;

let get_size = function
    | SLeaf _ -> 1
    | SNode (s, _, _) -> s;;

let rec convert t = match t with
    | Leaf -> SLeaf 1
    | Node (l, r) -> 
        let sl = convert l
        and sr = convert r
        in SNode (get_size sl + get_size sr + 1, sl, sr);;

let rozciecie t = 
    let ct = convert t in
    let n = get_size ct in
    let diff x = abs (x - (n - x)) in
    let rec _rozciecie = function
        | SLeaf _ -> diff 1
        | SNode (s, l, r) ->
            min (diff s) (min (_rozciecie l) (_rozciecie r))
    in _rozciecie ct;;


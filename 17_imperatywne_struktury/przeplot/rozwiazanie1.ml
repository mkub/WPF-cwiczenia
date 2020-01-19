type 'a option = None | Some of 'a
type 'a elem = {v: 'a; mutable next: 'a lista}
and 'a lista = 'a elem option

let przeplot xs ys =
    let rec aux x y = 
        match x, y with
        | None, _ -> y
        | _, None -> x
        | Some x, Some y -> 
            let nxt = aux x.next y.next in
            y.next <- nxt; x.next <- Some y; Some x
    in
    aux xs ys; ()


let a = Some {v = 1; next = Some {v = 2; next = Some {v = 3; next = None }}}
let b = Some {v = 4; next = Some {v = 5; next = Some {v = 6; next = None }}}

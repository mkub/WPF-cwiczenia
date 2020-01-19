type 'a option = None | Some of 'a;;
type 'a elem = {v: 'a; mutable next: 'a lista}
and 'a lista = 'a elem option;;

let petla l =
    match l with
    | None -> ()
    | Some st -> 
        let rec loop prev nxt = 
            if nxt = None then
                begin
                st.next <- Some prev;
                end
            else
                begin
                    let Some nxt = nxt in
                    let _nxt = nxt.next in
                    nxt.next <- Some prev;
                    loop nxt _nxt;
                end
        in 
        loop st st.next;;

let a = Some {v = 1; next = Some {v = 2; next = Some {v = 3; next = None }}};;
petla a;;
(* Some {v = 1; next = Some {v = 3; next = Some {v = 2; next = Some <cycle>}}}) *)

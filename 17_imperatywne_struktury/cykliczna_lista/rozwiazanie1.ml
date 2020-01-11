type 'a elem = {v: 'a; mutable next: 'a elem; mutable prev: 'a elem};;

let create x = {v = x; next = x; prev = x};;

let add x cur = 
    let nxt = cur.next in
    let nw = {v = x; next = nxt; prev = cur} in
        begin
            cur.next <- nw;
            nxt.prev <- nw;
        end;;

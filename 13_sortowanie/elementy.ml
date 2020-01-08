let elementy xs ys = 
    let n = List.length xs in
    let ys_ind = List.sort compare (List.combine ys (List.init n (fun x -> x))) in    

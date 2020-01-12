let shuffle xs ys = 
    let rec pom ans xs ys =
        match xs with
            | [] -> (List.rev ys) @ ans
            | x :: rest -> pom (x :: ans) ys rest in
    List.rev (pom [] xs ys);;

assert (shuffle [3; 2; 8; 1; 9; 3; 6] [5; 7; 0] = [3; 5; 2; 7; 8; 0; 1; 9; 3; 6]);;

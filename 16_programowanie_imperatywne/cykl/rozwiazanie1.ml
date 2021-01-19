let cykl tab = 
  let counter = ref 1 in 
  let visited = Array.make (Array.length tab) (-1) in
  let aux index = 
    begin
      if visited.(index) = -1 then
        let u = ref index in
        while visited.((!u)) = -1
          do
            visited.(!u) <- !counter;
            u := tab.(!u);
            counter := !counter + 1;
          done;
          if visited.(tab.(!u)) > 0 then
            counter := 1;
    end
  in for i = 0 to ((Array.length tab) - 1)
      do
        aux i
      done;
  Array.fold_left (max) (-1) visited;;

assert(cykl [|2; 1; 0; 5; 6; 4; 3; 8; 7|] = 4);;

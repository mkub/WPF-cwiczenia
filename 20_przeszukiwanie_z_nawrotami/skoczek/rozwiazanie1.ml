(* Wyjątek podnoszony po znalezieniu rozwiązania *)
exception Solution of (int *int) list;;


let skoczek n = 
  let num_of_all = n * n in
  let visited = Array.init n (fun _ -> Array.init n (fun _ -> false)) in

  (* Sprawdza czy pole (i, j) jest na planszy i czy jest wolne *)
  let empty (i, j) = 
    i < n && i >= 0 && j < n && j >= 0 && not visited.(i).(j) 
  in

    (* Uruchamia procedurę f dla możliwych ruchów *)
    let iter f (i, j) = 
      let moves = 
        List.filter empty
          [
            (i+2, j+1); (i+1, j+2); (i-2, j-1); (i-1, j-2);
            (i+2, j-1); (i+1, j-2); (i-2, j+1); (i-1, j+2)
          ] 
      in 

        List.iter 
          (fun (w, k) -> begin
              visited.(w).(k) <- true;
              f (w, k);
              visited.(w).(k) <- false;
          end) 
          moves
    in

      (* Jeśli mamy rozwiązanie, to podnosi wyjątek Solution, 
       * jeśli nie, to liczy dalej rozwiązanie *)
      let rec backtrack pos num_of_visited tour = 
        if num_of_visited = num_of_all then 
          raise (Solution tour)
        else 
          iter (fun p -> backtrack p (num_of_visited + 1) (p::tour)) pos
      in 

        (* Rozpoczyna szukanie rozwiązania od pola (0, 0) *)
        try 
          begin
            visited.(0).(0) <- true;
            backtrack (0, 0) 1 [(0,0)]; 
            failwith "No solutiion";
          end 
        with
          Solution x -> List.rev x;;

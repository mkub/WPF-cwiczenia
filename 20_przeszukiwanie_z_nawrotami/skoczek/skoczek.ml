(* Wyjątek podnoszony, gdy rozwiązanie nie istnieje *)
exception Failure;;
(* Wyjątek podnoszony po znalezieniu rozwiązania *)
exception Solution of (int *int) list;;

let skoczek n = 
  let num_of_all = n * n and num_of_visited = 1 in
  let visited = Array.init n (fun _ -> Array.init n (fun _ -> 0)) in
  visited.(0).(0) <- 1;
  (* Sprawdza czy pole (i, j) jest na planszy i czy jest wolne *)
  let empty i j = 
    if i < n && i >= 0 && j < n && j >= 0 then visited.(i).(j) = 0
    else false 
  in
  (* Uruchamia procedurę f dla możliwych ruchów *)
  let iter f (i, j, num_of_visited, tour) = 
    let moves = List.filter (fun (i, j) -> empty i j)
      [(i+2, j+1); (i+1, j+2); (i-2, j-1); (i-1, j-2);
      (i+2, j-1); (i+1, j-2); (i-2, j+1); (i-1, j+2)] 
    in List.iter 
      (fun (w, k) -> 
        begin
          visited.(w).(k) <- 1;
          f (w, k, num_of_visited + 1, ((w, k) :: tour));
          visited.(w).(k) <- 0;
        end
      ) moves
  in
  (* Jeśli mamy rozwiązanie, to podnosi wyjątek Solution, 
   * jeśli nie, to liczy dalej rozwiązanie *)
  let rec backtrack (i, j, num_of_visited, tour) = 
    begin
      if num_of_visited = num_of_all then raise (Solution (tour));
      iter backtrack (i, j, num_of_visited, tour);
    end
  in 
  (* Rozpoczyna szukanie rozwiązania od pola (0, 0) *)
  try (backtrack (0, 0, num_of_visited, [(0, 0)]); raise Failure) with
    Solution x -> List.rev x;;

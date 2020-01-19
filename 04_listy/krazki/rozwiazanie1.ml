(* otwory to lista srednic otworow w walcu OD DOLU *)
(* srednice to niepusta lista srednic kolejnych 
   krazkow wrzucanych do walca *)
let krazki otwory srednice =
    let rec pom otwory srednice =
        match srednice with
            | [] -> List.length otwory
            | s :: s_res ->
                match otwory with
                    | [] -> 0
                    | o :: o_res ->
                        if s <= o then
                            pom o_res s_res
                        else
                            pom o_res srednice
    in pom otwory srednice;;

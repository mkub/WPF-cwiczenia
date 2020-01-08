(* otwory to lista srednic otworow w walcu OD DOLU *)
(* srednice to niepusta lista srednic kolejnych 
   krazkow wrzucanych do walca *)
let krazki otwory srednice =
    let rec _krazki otwory srednice =
        match srednice with
            | [] -> List.length otwory
            | s :: s_res ->
                match otwory with
                    | [] -> 0
                    | o :: o_res ->
                        if s <= o then
                            _krazki o_res s_res
                        else
                            _krazki o_res srednice
    in _krazki otwory srednice;;

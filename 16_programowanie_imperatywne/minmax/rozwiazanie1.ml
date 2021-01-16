let minmax tab = 
  let poprzedni = ref tab.(0)
  and rozmiar = Array.length tab - 1 
  and odp = ref (tab.(0), tab.(0)) in
  let aux j a = 
    if !poprzedni > tab.(j) then a := (!poprzedni, tab.(j))
  in for i = 1 to rozmiar do aux i odp done;
  !odp;;
  
minmax[|2;3;1|];;

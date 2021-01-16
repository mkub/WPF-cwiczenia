let segment tab = 
  let n = Array.length tab and i = ref 1 and j = ref 1 in
  let max_globalne = ref 0 and max_lokalne = ref 0 and wartosc = ref 1 in
  for k = 0 to n - 1 do 
    max_globalne := (max (!max_globalne) (!max_lokalne));
    if tab.(k) >= !wartosc then 
      begin
        j := k + 1;
        wartosc := (!j - !i + 1);
        max_lokalne := !max_lokalne + 1;
      end
    else
      begin 
        i := k + 1;
        j := k + 1;
        wartosc := (!j - !i + 1);
        max_lokalne := 0;
        
      end
  done;
  max_globalne := (max (!max_globalne) (!max_lokalne));
  !max_globalne;;

assert(segment [|7;16;23;77;15;42|] = 6);;
assert(segment [|7;16;23;3;15;0|] = 5);;
assert(segment [|7;16;23;2;15;0|] = 3);;
let nawiasy tab =
  let dlugosc = ref 0 and stos = Stack.create () in
  let a = ref 0 in
  let f i acc = 
    if tab.(i) = '(' then
      begin
        Stack.push ('(') stos;
      end
    else 
      if Stack.is_empty stos then 
        begin
          acc := max (!dlugosc) (!acc); 
          dlugosc := 0;
        end
      else 
        begin
          let _ = Stack.pop stos in
          dlugosc := !dlugosc + 1;
          acc := max (!dlugosc) (!acc); 
        end
  in for i = 0 to ((Array.length tab) - 1)
      do
        f i (a)
      done;
      2*(!a);;

assert(nawiasy [|')'; '('; '('; ')'; '('|] = 2);;
assert(nawiasy [|'('; '('; ')'; ')'; ')'|] = 4);;
assert(nawiasy [|'('; '('; ')'; '('; ')'|] = 4);;
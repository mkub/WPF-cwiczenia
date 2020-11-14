let fir3 x = match x with (a,_,_) -> a;;
let sec3 x = match x with (_,a,_) -> a;;
let thi3 x = match x with (_,_,a) -> a;;
let tail x = match x with _::a -> a;;
let head x = match x with a::_ -> a;;

exception Too_short_list;;
exception No_triangle;;
let trojki lst =
  if lst = [] || (tail lst) = [] || (tail (tail lst)) = [] then raise(Too_short_list) else
  let rec triangle_finder triple rem =
    if (fir3 triple) + (sec3 triple) > (thi3 triple) then triple else
    if rem = [] then raise(No_triangle) else
    triangle_finder ((sec3 triple), (thi3 triple), (head rem)) (tail rem)
  in
  triangle_finder ((head lst), (head(tail lst)), (head (tail (tail lst)))) (tail (tail (tail lst)))
  ;;

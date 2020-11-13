let tail x = match x with _::a -> a;;
let head x = match x with a::_ -> a;;
let rev l = 
  let rec pom l w =
    if l = [] then w
    else pom (tail l) ((head l)::w)
  in pom l [];;
let rec append l1 l2 = if l1 = [] then l2 else (head l1)::(append (tail l1) l2);;

let podziel lst =
  let rec pom rest now next seq ans =
    if rest = [] then ans else
    if now = head rest then pom (tail rest) (next) (next+1) [] ((append seq [head rest])::ans) else 
    pom (tail rest) (now) (next+1) (append seq [head rest]) ans
  in
  rev (pom lst 1 2 [] [])
  ;;

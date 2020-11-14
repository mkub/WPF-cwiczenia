let tail x = match x with _::a -> a;;
let head x = match x with a::_ -> a;;
let rev l = 
  let rec pom l w =
    if l = [] then w
    else pom (tail l) ((head l)::w)
  in pom l [];;

let tails lst = 
  let rec pre ls su ans =
    if ls = [] then ans else
    pre (tail ls) ((head ls)::su) (((head ls)::su)::ans)
  in
  pre (rev lst) [] [[]];;

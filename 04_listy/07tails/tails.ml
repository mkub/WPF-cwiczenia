let tails lst = 
  let rec pre ls su ans =
    if ls = [] then ans else
    pre (tail ls) ((head ls)::su) (((head ls)::su)::ans)
  in
  pre (rev lst) [] [[]];;

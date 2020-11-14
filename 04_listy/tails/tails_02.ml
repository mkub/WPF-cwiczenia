open List;;

let tails lst = 
  	let rec pre ls su ans =
    	if ls = [] then ans 
    	else pre (tl ls) ((hd ls) :: su) (((hd ls) :: su) :: ans)
  	in
  		pre (rev lst) [] [[]];;


assert (tails [] = [[]]);;
assert (tails [1; 2; 3] = [[1; 2; 3]; [2; 3]; [3]; []]);;

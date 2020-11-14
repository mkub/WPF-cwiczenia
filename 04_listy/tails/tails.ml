open List;;

let rec tails lst = 
	if lst = [] then [[]]
	else lst :: (tails (tl lst));;

assert (tails [] = [[]]);;
assert (tails [1; 2; 3] = [[1; 2; 3]; [2; 3]; [3]; []]);;

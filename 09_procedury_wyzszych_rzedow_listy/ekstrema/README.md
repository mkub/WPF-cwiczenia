Dla danej listy liczb całkowitych `l = [x1;x2;...;xn]`, minimum (maksimum) nazwiemy taki fragment listy `xi = xi+1 = ... = xj`, że:
* `1 <= i <= j <= n`,  
* `jeśli i > 1, to xi-1 > xi (xi-1 < xi)`,  
* `jeśli j < n, to xj < xj+1 (xj > xj+1)`,  
Ekstremum oznacza minimum lub maksimum.  
Napisz procedurę `ekstrema : int list → int`, która dla danej listy policzy ile jest na niej ekstremów. 

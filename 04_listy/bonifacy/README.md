Ciąg liczb naturalnych x<sub>0</sub>, x<sub>1</sub>, ... nazwiemy ciągiem Bonifacego 
wyznaczonym przez skończony niepusty ciąg zerojedynkowy [b<sub>0</sub>; ...; b<sub>k−1</sub>],
jeśli x<sub>0</sub> = 0, x<sub>1</sub> = 1, x<sub>2</sub> = 1, a dla i ≥ 3 zachodzi
x<sub>i</sub> = x<sub>i−1</sub> + x<sub>i−2</sub> jeśli b<sub>i mod k</sub> = 0 oraz 
x<sub>i</sub> = x<sub>i−1</sub> + x<sub>i−3</sub> dla b<sub>i mod k</sub> = 1
(albo inaczej x<sub>i</sub> = x<sub>i−1</sub> + x<sub>i−2−b<sub>i mod k</sub></sub>).

Na przykład ciąg [1; 1; 0; 1] wyznacza ciąg Bonifacego: 0, 1, 1, 1, 2, 3, 5, 7, 10, 15, 25, 35, 50, ...

Napisz funkcję `bonifacy : int -> int list -> int`, która dla liczby naturalnej n (n ≥ 0) 
oraz co najmniej trzyelementowej zerojedynkowej listy [b<sub>0</sub>; ...; b<sub>k−1</sub>] 
obliczy n-tą liczbę wyznaczonego przez tę listę ciągu Bonifacego.

type punkt = int * int;;
type przedzial = int * int;;
type prostokat = punkt * punkt;;

(* rzut prostokąta na oś X *)
let rzut_x ((p, q) : prostokat) = ((fst p, fst q) : przedzial);;

(* rzut prostokąta na oś Y *)
let rzut_y ((p, q) : prostokat) = ((snd p, snd q) : przedzial);;

(* przecięcie dwóch przedziałów na osi *)
let przeciecie_1D ((a, b) : przedzial) ((c, d) : przedzial) =
  ((max a c, min b d) : przedzial);;

(* prostokąt jako produkt dwóch odcinków, na osi X i Y *)
let produkt ((a, b) : przedzial) ((c, d) : przedzial) =
  (((a, c), (b, d)) : prostokat);;

(* przecięcie dwóch prostokątów *)
let przeciecie (a : prostokat) (b : prostokat) =
  let xx = przeciecie_1D (rzut_x a) (rzut_x b)
  and yy = przeciecie_1D (rzut_y a) (rzut_y b)
  in produkt xx yy;;



(* Testy *)
assert (przeciecie ((1, 3), (5, 6)) ((2, 1), (7, 5)) = ((2, 3), (5, 5)));;
assert (przeciecie ((-1, 1), (5, 2)) ((1, -1), (3, 4)) = ((1, 1), (3, 2)));;
let ((x1, y1), (x2, y2)) = przeciecie ((0, 0), (1, 1)) ((2, 1), (4, 4))
in assert (x1 > x2 || y1 > y2);;

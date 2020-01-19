Dana jest deklaracja typu drzew:
```ml
type tree = Node of tree * tree | Null;;
```
Odległością między dwoma wierzchołkami (`Node`) w drzewie nazywamy minimalną
liczbę krawędzi jakie trzeba przejść z jednego wierzchołka do drugiego.
Średnicą drzewa nazwiemy maksymalną odległość między dwoma węzłami (`Node`) w drzewie.
Przyjmujemy, że średnica pustego drzewa (`Null`) jest równa 0.

Napisz procedurę `średnica : tree → int`, która oblicza średnicę danego drzewa.

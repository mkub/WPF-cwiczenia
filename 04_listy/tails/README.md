Załóżmy, że dana jest lista [x1; x2; …; xn].
Sufiksem tej listy nazwiemy każdą listę, którą można uzyskać przez usunięcie pewnej liczby (od 0 do n) jej początkowych elementów. 
Tak więc, sufiksami danej listy będzie n.p. ona sama, pusta lista, a także [x3; x4; …; xn].

Napisz procedurę 

```
tails : α list → α list list
```

która dla danej listy tworzy listę wszystkich jej sufiksów, uporządkowaną wg ich długości (do wyboru, czy rosnąco, czy malejąco).
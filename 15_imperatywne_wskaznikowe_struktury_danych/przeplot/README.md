Dana jest definicja typu elementów tworzących listy wskaźnikowe:  
```ml
type 'a option = None | Some of 'a
type 'a elem = {v: 'a; mutable next: 'a lista}
and  'a lista = 'a elem option
```
Napisz procedurę `przeplot : lista → lista → unit`, która splata obie listy w jedną listę postaci: pierwszy rekord pierwszej listy, pierwszy rekord drugiej listy, drugi rekord pierwszej listy, drugi rekord drugiej listy, itd. Jeśli jedna z list jest dłuższa, to jej końcówka stanowi końcówkę listy wynikowej.

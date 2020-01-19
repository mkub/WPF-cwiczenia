Dana jest definicja typu elementów tworzących listy wskaźnikowe:  
```ml
type 'a option = None | Some of 'a
type 'a elem = {v: 'a; mutable next: 'a lista}
and  'a lista = 'a elem option
```
Napisz procedurę `petla : lista → unit`, która mając daną listę jednokierunkową, tworzy z niej listę cykliczną, ale z odwróconym kierunkiem wskaźników.  
Możesz założyć, że dana lista jest poprawną listą jednokierunkową, to znaczy ma koniec i nie zapętla się.

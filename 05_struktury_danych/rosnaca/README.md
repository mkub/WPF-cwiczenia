Dana jest deklaracja typu drzew:
```ml
type α tree = Node of α  * α tree list;;
```
Ścieżkę w drzewie nazwiemy *rosnącą*, jeżeli wartości w węzłach na tej ścieżce, w kierunku od korzenia w dół, są rosnące.
Napisz procedurę `rosnaca: int tree → int list`, która znajdzie w danym drzewie najdłuższą ścieżkę rosnącą i zwróci wartości znajdujące się na niej (w kolejności od korzenia w dół). (Uwaga: szukana ścieżka nie musi zaczynać się w korzeniu i nie musi kończyć się w liściu.) 

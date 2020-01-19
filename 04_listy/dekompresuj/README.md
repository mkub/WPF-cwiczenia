Rozważmy następującą metodę kompresji ciągów liczb całkowitych:
Jeżeli w oryginalnym ciągu ta sama liczba powtarza się kilka razy z rzędu, to jej kolejne wystąpienia reprezentujemy za pomocą jednej tylko liczby.
Konkretnie, `i` powtórzeń liczby `k` reprezentujemy w ciągu skompresowanym jako `2^(i−1)⋅(2⋅k−1)`.  

Napisz procedurę `dekompresuj : int list → int` list dekompresującą zadaną listę.
Możesz założyć, że lista skompresowana nie zawiera zer.  

Podaj specyfikację (warunek początkowy i końcowy) wszystkich definiowanych procedur i uzasadnij **zwięźle** ich pełną poprawność.
W przypadku rekurencyjnych procedur iteracyjnych warunek początkowy musi zawierać niezmiennik iteracji. 

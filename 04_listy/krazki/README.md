[XIII OI]

Mały Jaś dostał od rodziców na urodziny nową zabawkę, w której skład wchodzą rurka i krążki.
Rurka ma nietypowy kształt -- mianowicie jest to połączenie pewnej liczby walców (o takiej samej grubości)
z wyciętymi w środku (współosiowo) okrągłymi otworami różnej średnicy.
Rurka jest zamknięta od dołu, a otwarta od góry.
Krążki w zabawce Jasia są walcami o różnych średnicach i takiej samej grubości co walce tworzące rurkę.

Jaś wymyślił sobie następującą zabawę.
Mając do dyspozycji pewien zestaw krążków zastanawia się, na jakiej głębokości zatrzymałby się ostatni z nich,
gdyby wrzucać je kolejno do rurki centralnie (czyli dokładnie w jej środek).
Każdy kolejny krążek po wrzuceniu spada dopóki się nie zaklinuje (czyli nie oprze się o walec, w którym wycięty jest
otwór o mniejszej średnicy niż średnica krążka), albo nie natrafi na przeszkodę w postaci innego krążka lub dna rurki.

Napisz procedurę `krążki : int list → int list → int`, która na podstawie listy średnic
otworów w kolejnych walcach tworzących rurkę, oraz listy średnic kolejno wrzucanych krążków obliczy głębokość, na której zatrzyma się
ostatni wrzucony krążek (lub 0 jeśli nie wszystkie krążki zmieszczą się w rurce). 

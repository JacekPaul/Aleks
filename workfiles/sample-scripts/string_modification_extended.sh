#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

echo -e "\n\t\tMODYFIKACJA NAPISÓW 2\n"

echo -e 'W skryptach basha, gdy operujemy na zmiennych, możemy używać notacji ${}.'
echo -e "Jednak czasami wygodniej jest operować na przetwarzaniu potokowym\nalbo widzieć tekst jako np. zbiór kolumn."

echo -e "\n\t\tCUT\n"

echo -e "Weźmy następującą linię tekstu: "
LINE1="Janina\tKowalska\tGniezno"
echo -e "$LINE1"
echo -e "Chcemy dostać się do drugiego pola (czyli nazwiska)."
echo -e "Możemy do tego celu użyć programu cut, który uznaje tekst za tekst w kolumnach oddzielonych od siebie tabulatorem: "
echo -e 'echo -e "$LINE1" | cut -f2'
echo -e "$LINE1" | cut -f2

echo -e "\nMożemy także zmienić separator; dla linii"
LINE2="Janina,Kowalska,Gniezno"
echo -e "$LINE2"
echo -e "(czyli fragmentu pliku CSV), wyświetlimy nazwisko:"
echo -e 'echo -e "$LINE2" | cut -f2 -d ","'
echo -e "$LINE2" | cut -f2 -d ","

echo -e "\nCo najistotniejsze, cut potrafi pracować także z wieloma liniami tekstu."
TEXT1=$LINE2"\nGrzeeegorz,Brzęczyszczykiewicz,Warszawa"
echo -e "Z następujących danych: "
echo -e "$TEXT1"
echo -e "będziemy mogli pobrać kolumnę z miastami:"
echo -e 'echo -e "$TEXT1" | cut -f3 -d ","'
echo -e "$TEXT1" | cut -f3 -d ","

echo -e "\n\t\tTR\n"

echo -e "Program tr zamienie jedne znaki na drugie."
echo -e "Potrafi np. zamieniać małe litery na duże"
echo -e "Tekst: $(echo Tekst | tr [:lower:] [:upper:])"
echo -e '\n\tUWAGA!!!'
echo -e "tr pracuje TYLKO na znakach ASCII"
echo -e "Oznacza to, że nie ogarnia polskich znaków"
echo -e "I tak może być użyteczny. Na przykład -d usuwa podane znaki, a -s usuwa powtarzające się sąsiednie znaki"
echo -e "$TEXT1" | tr -d ","
echo -e "$TEXT1" | tr -s "a"

echo -e "\n\t\tSED\n"

echo -e "sed jest edytorem strumieniowym"
echo -e "Najczęściej stosowany do zamiany jednego wzorca na drugi:"
echo -e 'echo -e "$TEXT1" | sed "s/Janina/Grażyna/g"'
echo -e "$TEXT1" | sed "s/Janina/Grażyna/g"

echo -e "\nMożna nim także usuwać linie pasujące do wzorca"
echo -e 'echo -e "$TEXT1" | sed "/Warszawa$/d"'
echo -e "$TEXT1" | sed "/Warszawa$/d"

echo -e "\nMoże także stworzyć takie paskudztwo, które zamieni wszystkie małe litery na wielkie:"
echo -e 'echo -e "$TEXT1" | sed "s/.*/\U&/"'
echo -e "$TEXT1" | sed 's/.*/\U&/'

echo -e "\nMożna usuwać linie po numerach (i zakresach numerów linii)"
echo -e 'echo -e "$TEXT1" | sed "2d"'
echo -e "$TEXT1" | sed '2d'


#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

if [[ $# -ne 1 ]]; then
  echo "Podaj jedną parametr (liczbę)"
  exit 1
fi

echo -e "\n\t\tPĘTLA WHILE\n"

LOOP_STOP=$1

echo -e "Pętla while działa, dopóki warunek jest spełniony\n"

COUNTER=0

while [[ $COUNTER -le $LOOP_STOP ]]; do
  echo -e "\tPrzebieg nr $COUNTER"
  COUNTER=$(($COUNTER + 1))
done

echo -e "\n\t\tPĘTLA FOR\n"
echo -e "Pętla for działa dla każdego elementu z listy\n"

echo -e "Na przykład dla zakresów liczbowych {n..k};"
echo -e 'Jednakże działa on tylko dla stałych'
echo -e 'for value in {1..6}; do\n'

for value in {1..6}; do
  echo -e "\tPrzebieg nr $value"
done

echo -e '\nAby wygenerować listę ze zmienną liczbą elementów, użyj programu seq: '
echo -e 'seq liczba_poczatkowa liczba_koncowa'
echo -e 'for value in $(seq 1 $LOOP_STOP); do\n'

for value in $(seq 1 $LOOP_STOP); do
  echo -e "\tPrzebieg nr $value"
done

echo -e '\nZapis bardziej zbliżony do C, C++, Java: '
echo -e 'for ((i=1; i<=$END; i++)); do\n'

for ((i=1; i<=$LOOP_STOP; i++)); do
  echo -e "\tPrzebieg nr $i"
done

echo -e "\nListą nie muszą być liczby; mogą być np. słowa: "

LINE="To nie konie tak cwałują i uszami strzygą"

echo -e 'for word in $LINE; do\n'

for word in $LINE; do
  echo -e "\t$word"
done

echo -e "\nPorównaj jednak: "
echo -e 'for word in "$LINE"; do\n'

for word in "$LINE"; do
  echo -e "\t$word"
done

echo -e "\nIterować pętlą FOR można także pliki: "
echo -e 'for file in ./*; do\n'

for file in ./*; do
  echo -e "\tTyp pliku $file: "
  echo -e "\t$(file -i $file)"
done

#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

N=2
M=10

echo -e "\n\t\tARYTMETYKA\n"

echo -e 'Do wykonywania operacji na liczbach całkowitych używamy notacji $(())'
echo -e "Dodawanie zmiennych z przypisaniem do zmiennej:"
echo -e 'SUM=$(($N + $M))'

SUM=$(($N + $M))
echo -e "$SUM"

echo -e "\nDodawanie zmiennej i stałej:"
echo -e 'SUM2=$(($N + 1234))'

SUM2=$(($N + 1234))
echo -e "$SUM2"

echo -e "\nDostępne są różne operacje, np. potęgowanie: "
echo -e 'POW=$(($N ** $M))'

POW=$(($N ** $M))
echo -e "$POW"

echo -e "\nMożna również wykonywać operacje arytmetyczne bez przypisania do zmiennej"
echo -e "(Dzielenie - zawsze całkowite)"
echo -e 'echo -e "$(($M / $N))"'

echo -e "$(($M / $N))"


#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

echo -e "\n\t\tINNE PROGRAMY\n"

echo -e "Oczywiście wszystko, co znamy z konsoli, można użyć w skryptach.\n"

ls

echo -e "\nAle w skrypcie często interesuje nas wzięcie wyjścia programu i przetworzenie go."
echo -e 'Używamy do tego celu składni $()'
echo -e "Na przykład:"
echo -e 'OUT=$(ls -al | grep "other")'

OUT=$(ls -al | grep "other")

echo -e "Wynik: \n$OUT"

echo -e '\n(Możliwa jest także składnia `` (backtics), ale nie będziemy jej używać)'


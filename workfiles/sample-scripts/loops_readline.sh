#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

if [[ $# -ne 1 ]]; then
  echo "Podaj jedną parametr (ścieżkę do pliku)"
  exit 1
fi

FILENAME=$1

if [[ ! -e $FILENAME ]]; then
  echo -e "Plik $FILENAME nie istnieje"
  exit 1
fi

echo -e "\n\t\tPĘTLA WHILE - CZYTANIE PLIKU LINIA PO LINII\n"

while read line; do
  echo -e "\t$line"
done < $FILENAME

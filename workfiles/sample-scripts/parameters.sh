#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

echo -e "\n\t\tPARAMETRY WYWOŁANIA\n"

echo -e 'Nazwa skryptu skrywa się w zmiennej $0'
echo -e "$0"

echo -e '\nKolejne parametry wywołania znajdują się w zmiennych $1, $2, $3...'
echo -e "Parametr 1: $1"
echo -e "Parametr 2: $2"
echo -e "Parametr 3: $3"
echo -e "Parametr 4: $4"
echo -e "Parametr 5: $5"

echo -e '\nW zmiennej $* znajdują się wszystkie parametry jako jeden ciąg znaków'
echo -e "Wszystkie parametry: $*"

echo -e '\nW zmiennej $# znajduje się liczba podanych parametrów'
echo -e "Podano $# parametrów"

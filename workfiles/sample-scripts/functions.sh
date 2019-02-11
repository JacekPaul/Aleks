#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

echo -e "\n\t\tFUNKCJE\n"

echo -e "Funkcje określają kod, który zostanie wykonany dopiero po wywołaniu funkcji.\n"

function first_function {
  echo -e "Moja pierwsza funkcja z parametrem: $1"
}

echo -e "Dopiero zadeklarowałem funkcję."
echo -e "Teraz ją wywołam."

first_function "Parametr"

echo -e "\n\t\tZASIĘG ZMIENNYCH\n"

SCRIPT_VARIABLE="bałagan"

function function_with_nonlocal_variables {
  echo -e "Mogę się dostać do zmiennej ze skryptu: "
  echo -e "$SCRIPT_VARIABLE"
  echo -e "Mogę ją nawet zmienić: "
  SCRIPT_VARIABLE="no i teraz jest bałagan"
  FUNCTION_VARIABLE="z funkcji"
}

function_with_nonlocal_variables
echo -e "$SCRIPT_VARIABLE"
echo "$FUNCTION_VARIABLE"

function function_with_local_variables {
  local LOCAL_VARIABLE="zmienna lokalna"
  echo -e "Mam lokalną zmienną: $LOCAL_VARIABLE"
}

echo -e "Nie mogę się dostać do zmiennej lokalnej poza funkcją: "
echo -e "$LOCAL_VARIABLE"



#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

EXPRESSION=$1

if [[ -z "$EXPRESSION" ]]; then
  echo "Podaj jeden parametr - wyrażenie w ONP do policzenia"
  exit 1
fi

counter=0

for w in $EXPRESSION; do
  if [[ $counter -eq 0 ]]; then
    A=$w
  elif [[ $counter -eq 1 ]]; then
    B=$w
  elif [[ $counter -eq 2 ]]; then
    OP=$(echo -e "$w")
  else 
    echo "Nieprawidłowa liczba argumentów"
    exit 1
  fi
  counter=$((counter + 1))
done

if [[ $OP = '+' ]]; then
  result=$((A + B))
elif [[ $OP = "-" ]]; then
  result=$((A - B))
elif [[ $OP = "\*" ]]; then
  result=$((A * B))
elif [[ $OP = "/" ]]; then
  result=$((A / B))
else
  echo "Nieznany operator!"
  exit 1
fi

echo "($EXPRESSION) = $result"


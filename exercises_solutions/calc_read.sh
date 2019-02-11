#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

read -p "Podaj liczbę 1: " A
read -p "Podaj liczbę 2: " B

read -p 'Jaką operację wykonać? [+, -, mul, /, pow]: ' OP

if [[ $OP == '+' ]]; then
  result=$((A + B))
elif [[ $OP == "-" ]]; then
  result=$((A - B))
elif [[ $OP == "mul" ]]; then
  result=$((A * B))
elif [[ $OP == "/" ]]; then
  result=$((A / B))
elif [[ $OP == "pow" ]]; then
  result=$((A ** B))
else
  echo "Nieznany operator!"
  exit 1
fi

echo "($A $OP $B) = $result"


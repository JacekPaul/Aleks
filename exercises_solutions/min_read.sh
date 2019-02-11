#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

read -p "Podaj liczbę X: " X
read -p "Podaj liczbę Y: " Y


if [[ $X -lt $Y ]]; then
  echo -e "min($X, $Y) = $X"
elif [[ $X -eq $Y ]]; then
  echo -e "$X == $Y"
else
  echo -e "min($X, $Y) = $Y"
fi

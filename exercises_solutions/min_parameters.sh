#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

if [[ $# -lt 2 ]]; then
  echo "Podaj dwie liczby"
  exit 1
fi

X=$1
Y=$2

if [[ $X -lt $Y ]]; then
  echo -e "min($X, $Y) = $X"
elif [[ $X -eq $Y ]]; then
  echo -e "$X == $Y"
else
  echo -e "min($X, $Y) = $Y"
fi

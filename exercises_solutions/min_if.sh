#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

X=2
Y=10

# Zadanie 1
if [[ $X -lt $Y ]]; then
  echo -e "Liczba $X jest mniejsza od $Y"
fi

#Zadanie 2
if [[ $X -lt $Y ]]; then
  echo -e "min($X, $Y) = $X"
else
  echo -e "min($X, $Y) = $Y"
fi

#Zadanie 3
if [[ $X -lt $Y ]]; then
  echo -e "min($X, $Y) = $X"
elif [[ $X -eq $Y ]]; then
  echo -e "$X == $Y"
else
  echo -e "min($X, $Y) = $Y"
fi

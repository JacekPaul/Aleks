#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

read -p "Podaj liczbę 1: " A
read -p "Podaj liczbę 2: " B

read -p 'Jaką operację wykonać? [+, -, mul, /, pow]: ' OP

case $OP in
  "+") 
    result=$((A + B)) 
    ;;
  "-") 
    result=$((A - B)) 
    ;;
  "mul") 
    result=$((A * B)) 
    ;;
  "/") 
    result=$((A / B)) 
    ;;
  "pow") 
    result=$((A ** B)) 
    ;;
  *) 
    echo "Nieznany operator!"
    exit 1
esac

echo "($A $OP $B) = $result"


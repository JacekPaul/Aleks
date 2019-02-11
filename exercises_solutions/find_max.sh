#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

SERIES=$1

if [[ -z "$SERIES" ]]; then
  echo "Podaj jeden parametr - ciąg liczb"
  exit 1
fi

max=0

for number in $SERIES; do
  if [[ $number -gt $max ]]; then
    max=$number
  fi
done

echo "$max"

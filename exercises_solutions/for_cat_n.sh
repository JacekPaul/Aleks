#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

source_file=$1
DIRECTORY=$2
FILE_EXTENSION=$3
N=$4


if [[ -z "$N" ]]; then
  echo "Podaj liczbę N"
  exit 1
fi

if [[ ! -f "$source_file" ]]; then
  echo "Podany parametr nie jest nazwą pliku"
  exit 1
fi

if [[ -z "$FILE_EXTENSION" ]]; then
  echo "Podaj rozszerzenie pliku"
  exit 1
fi

if [[ ! -d "$DIRECTORY" ]]; then
  echo "Podany parametr nie jest katalogiem"
  exit 1
fi

for file in "$DIRECTORY"/*"$FILE_EXTENSION"; do
  ./cat_n.sh "$source_file" "$file" "$N" > "$file"".tmp"
  rm "$file"
  mv "$file"".tmp" "$file"
done

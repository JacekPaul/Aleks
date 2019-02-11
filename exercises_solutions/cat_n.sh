#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

source_file=$1
destination_file=$2
N=$3

if [[ -z "$N" ]]; then
  echo "Podaj liczbę N"
  exit 1
fi

if [[ ! -f "$destination_file" || ! -f "$source_file" ]]; then
  echo "Podane parametry nie są nazwami plików"
  exit 1
fi

IFS=''
counter=1
while read -r line; do
  if [[ $counter -eq $N ]]; then
    cat "$source_file"
  fi
  echo "$line"
  counter=$((counter + 1))
done < $destination_file

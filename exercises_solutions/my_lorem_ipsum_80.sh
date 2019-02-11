#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

file_to_read=$1

if [[ ! -e $file_to_read ]]; then
    echo "File $file_to_read doesn't exist!"
    exit 1
fi

while read line; do
    echo -e "AS> $line"
done < $file_to_read


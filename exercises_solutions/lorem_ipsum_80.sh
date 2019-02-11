#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

file_to_read=$1

if [[ ! -e $file_to_read ]]; then
    echo "File $file_to_read doesn't exist!"
    exit 1
fi

while read line; do
    length_of_line=${#line}
    while [[ $length_of_line -gt 80 ]]; do
        substring=${line:0:80}
        echo "$substring"
        line=${line:80}
        length_of_line=${#line}
    done
done < $file_to_read


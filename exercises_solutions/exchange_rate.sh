#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

file=dol.html

wget -q -O $file http://www.nbp.pl/kursy/kursya.html
value=$(cat $file | grep -A 2 "euro" | sed -n '3 p')
echo "Kurs euro:"
value2=$(echo ${value:38:6})
echo $value2
rm $file

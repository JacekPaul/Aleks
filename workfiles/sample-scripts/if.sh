#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

name="Aleksander"

if [[ "$name" == "Aleksander" ]]; then
    echo "Hi, Aleksander"
fi




if [[ "$name" == "Aleksander" ]]; then
    echo "Hi, Aleksander"
else
    echo "Hi, the other guy"
fi




if [[ "$name" == "Aleksander" ]]; then
    echo "Hi, Aleksander"
elif [[ "$name" == "Aleks" ]]; then
    echo "Hi, Aleks"
else
    echo "Hi, the other guy"
fi

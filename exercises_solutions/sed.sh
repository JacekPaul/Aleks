#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

nr_of_tall_people=$(tail -n +2 hw_200.csv | cut -d "," -f2 | sed "/^ [0-6]/d" | wc -l)

echo $nr_of_tall_people

#!/bin/bash

# Copyright: Aleksander Spyra
# Wrocław 2018

echo -e "\n\t\tMODYFIKACJA NAPISÓW\n"

echo -e "Bash oferuje wbudowane narzędzia do podstawowej manipulacji napisami."
echo -e 'Używać do tego będziemy notacji ${}\n'

STRING="Ala ma kota"

echo -e "Będziemy pracować na następującym napisie: $STRING"

echo -e '\nAby dobrać się do długości napisu, używamy ${#ZMIENNA}'
echo -e "Długość napisu: ${#STRING}"

echo -e "\nMożemy też wycinać podciągi napisów."
echo -e "Aby wyciąć podciąg rozpoczynający się na znaku o indeksie N (aż do końca), piszemy"
echo -e '${STRING:N}'
echo -e "${STRING:4}"

echo -e "\nAby wyciąć podciąg rozpoczynający się na znaku o indeksie N o długości L, piszemy"
echo -e '${STRING:N:M}'
echo -e "${STRING:4:2}"

echo -e "\nDa się także wyciąć podciąg, indeksując od końca ciągu znaków;"
echo -e '${STRING: -N}'
echo -e "${STRING: -4}"

echo -e "\nMożna także zastępować jedne podciągi innymi."
echo -e '${STRING//wzorzec/na_co_zmienić}'
echo -e "${STRING//kota/psa}"

STRING2="Janina,Kowalska,Gniezno"
echo -e "\nMożemy także usuwać z ciągu znaków prefiksy i sufiksy."
echo -e "Pracować teraz będziemy na ciągu znaków $STRING2"

echo -e "\nUsuwamy najkrótszy prefiks pasujący do wzorca: "
echo -e '${STRING#wzorzec}'
echo -e "${STRING2#*,}"

echo -e "\nUsuwamy najdłuższy sufiks pasujący do wzorca: "
echo -e '${STRING##wzorzec}'
echo -e "${STRING2##*,}"

echo -e "\nAnalogicznie sufiksy (% oraz %%)"






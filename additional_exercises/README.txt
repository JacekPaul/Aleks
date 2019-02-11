==============================================================================

1. Zdefiniujmy sobie następujący format danych:

REKORD = IMIĘ ; NAZWISKO ; ADRES
ADRES = ULICA , NR_DOMU , NR_MIESZKANIA , KOD_POCZTOWY , MIASTO

Na przykład:

Jan ; Kowalski ; Al. Solidarności , 13 , 2 , 00-001 , Warszawa

Badać będziemy plik data.txt.
Napisz skrypty / polecenia, które pozwolą odpowiedzieć na następujące pytania:

    1. Ile rekordów ma plik?

    2. Ile Krystyn występuje w zbiorze danych?

    3. Wypisz imiona i nazwiska wszystkich mieszkańców Dzierżoniowa.

    4. Ile różnych kodów pocztowych występuje w zbiorze danych?

    5. Posortuj dane alfabetycznie według nazwisk.

    6. Ilu Janów mieszka w Zakopanem?

    7. Ile ulic ma w nazwie frazę "Jan"?

==============================================================================

2. Napisz skrypt, który zamieni nazwy wszystkich plików w bieżącym katalogu na WIELKIE LITERY. Użyj tr oraz programu basename.

==============================================================================

3. Napisz skrypt, który przyjmie jako parametry nazwy dwóch plików oraz napis "suma" lub "roznica" i wyznaczy
    a) sumę zbiorów znajdujących się w plikach
    b) różnicę zbiorów znajdujjących się w plikach.

    Każdy element zbioru znajduje się w kolejnej linii

    Dla przykładu. Załóżmy, że mamy dwa pliki: A.txt, B.txt. 

    Zawartość pliku A.txt to:
    jabłko
    jajko
    pizza
    wino

    Zawartość pliku B.txt:
    jabłko
    pizza
    mleko
    masło

    Sumą jest zbiór:
    jabłko, jajko, pizza, wino, jabłko, pizza, mleko, masło

    Różnicą jest zbiór:
    jajko, wino
    
==============================================================================

Literatura, więcej literatury...

Na poziomie początkującym: https://linuxjourney.com/ (mało ćwiczeń)
O wiele dłuższe: https://www.edx.org/course/introduction-to-linux (bezpłatny, płatny jest certyfikat).

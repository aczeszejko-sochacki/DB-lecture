SELECT COUNT(kod_grupy)
FROM grupa JOIN przedmiot_semestr USING(kod_przed_sem)
    JOIN uzytkownik USING(kod_uz)
WHERE nazwisko = 'Kanarek'
    AND imie LIKE 'P%'
    AND rodzaj_zajec = 'r';
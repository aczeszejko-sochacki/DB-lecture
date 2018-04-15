SELECT COUNT(kod_grupy)
FROM grupa JOIN przedmiot_semestr USING(kod_przed_sem)
    JOIN uzytkownik USING(kod_uz)
    JOIN przedmiot USING(kod_przed)
WHERE nazwisko = 'Charatonik'
    AND imie LIKE 'W%'
    AND nazwa = 'Logika dla informatyków';
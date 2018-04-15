SELECT DISTINCT nazwa
FROM przedmiot_semestr JOIN grupa USING (kod_przed_sem)
                       JOIN uzytkownik USING (kod_uz)
                       JOIN przedmiot USING (kod_przed)
WHERE nazwisko = 'Urban';
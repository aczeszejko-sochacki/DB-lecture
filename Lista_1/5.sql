SELECT COUNT(DISTINCT nazwisko)
FROM semestr JOIN przedmiot_semestr USING (semestr_id)
             JOIN grupa USING (kod_przed_sem)
             JOIN uzytkownik USING (kod_uz)
             JOIN przedmiot USING (kod_przed)
WHERE semestr.nazwa LIKE 'Semestr zimowy%'
      AND rodzaj = 'o'
      AND rodzaj_zajec = 'c';
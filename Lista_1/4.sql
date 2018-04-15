SELECT COUNT(DISTINCT kod_przed)
FROM grupa JOIN przedmiot_semestr USING (kod_przed_sem)
           JOIN przedmiot USING (kod_przed)
WHERE rodzaj = 'o'
      AND rodzaj_zajec = 'e';
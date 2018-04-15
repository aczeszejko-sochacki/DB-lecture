SELECT COUNT(kod_przed_sem)
FROM przedmiot_semestr JOIN przedmiot USING (kod_przed)
WHERE rodzaj = 'o'
    AND semestr_id = 32;
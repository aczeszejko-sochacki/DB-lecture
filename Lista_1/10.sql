SELECT COUNT(kod_grupy)
FROM semestr JOIN przedmiot_semestr USING (semestr_id)
    JOIN przedmiot USING (kod_przed)
    JOIN grupa USING (kod_przed_sem)
WHERE semestr.nazwa = 'Semestr zimowy 2010/2011'
    AND przedmiot.nazwa = 'Logika dla informatyków'
    AND (rodzaj_zajec = 'c' OR rodzaj_zajec = 'C');
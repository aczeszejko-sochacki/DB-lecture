SELECT MAX(d1.data) - MIN(d1.data) FROM

(SELECT data
FROM uzytkownik JOIN wybor USING (kod_uz)
      JOIN grupa USING (kod_grupy)
      JOIN przedmiot_semestr USING (kod_przed_sem)
      JOIN przedmiot USING (kod_przed)
      JOIN semestr USING (semestr_id)
WHERE przedmiot.nazwa='Matematyka dyskretna (M)'
      AND semestr.nazwa='Semestr zimowy 2010/2011'
      AND rodzaj_zajec='w'
) d1;
SELECT DISTINCT u1.kod_uz, imie, nazwisko
FROM uzytkownik u1 JOIN wybor USING(kod_uz)
	JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr ps1 USING(kod_przed_sem)
	JOIN przedmiot USING(kod_przed)
WHERE przedmiot.nazwa LIKE 'Algorytmy i struktury danych%'
AND EXISTS(SELECT *
FROM uzytkownik u2 JOIN wybor USING(kod_uz)
	JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr ps2 USING(kod_przed_sem)
	JOIN przedmiot USING(kod_przed)
WHERE u1.kod_uz = u2.kod_uz
	AND przedmiot.nazwa LIKE 'Matematyka dyskretna%'
	AND ps1.semestr_id < ps2.semestr_id);
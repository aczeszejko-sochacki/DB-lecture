SELECT uzytkownik.kod_uz, imie, nazwisko
FROM uzytkownik JOIN wybor USING(kod_uz)
	JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr ps USING(kod_przed_sem)
	JOIN przedmiot USING(kod_przed)
WHERE nazwa LIKE 'Algorytmy i struktury danych%'
	AND uzytkownik.kod_uz IN
(SELECT wybor.kod_uz
	FROM wybor JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
	JOIN przedmiot USING(kod_przed)
WHERE nazwa LIKE 'Matematyka dyskretna%'
	AND ps.semestr_id < semestr_id);
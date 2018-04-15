WITH bazy AS (SELECT wybor.kod_uz
FROM wybor JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
	JOIN przedmiot USING(kod_przed)
	JOIN semestr USING(semestr_id)
WHERE przedmiot.nazwa = 'Bazy danych'
	AND rodzaj_zajec = 'w'
	AND semestr.nazwa = 'Semestr letni 2010/2011'),
sieci AS (SELECT wybor.kod_uz
FROM wybor JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
	JOIN przedmiot USING(kod_przed)
	JOIN semestr USING(semestr_id)
WHERE przedmiot.nazwa = 'Sieci komputerowe'
	AND rodzaj_zajec = 'w'
	AND semestr.nazwa = 'Semestr letni 2010/2011')

((SELECT * FROM bazy) EXCEPT (SELECT * FROM sieci)) UNION

((SELECT * FROM sieci) EXCEPT (SELECT * FROM bazy));

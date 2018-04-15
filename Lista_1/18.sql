(SELECT uzytkownik.kod_uz
FROM uzytkownik JOIN wybor USING(kod_uz)
	JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
WHERE semestr_id = 27)
INTERSECT
(SELECT uzytkownik.kod_uz
FROM uzytkownik JOIN wybor USING(kod_uz)
	JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
WHERE semestr_id = 28)
INTERSECT
(SELECT uzytkownik.kod_uz
FROM uzytkownik JOIN wybor USING(kod_uz)
	JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
WHERE semestr_id = 32)
INTERSECT
(SELECT uzytkownik.kod_uz
FROM uzytkownik JOIN wybor USING(kod_uz)
	JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
WHERE semestr_id = 33);
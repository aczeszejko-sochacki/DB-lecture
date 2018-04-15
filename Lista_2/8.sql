SELECT nazwa
FROM przedmiot JOIN przedmiot_semestr USING(kod_przed)
	JOIN grupa USING(kod_przed_sem)
	JOIN wybor USING(kod_grupy)
WHERE rodzaj = 'p'
	AND rodzaj_zajec = 'w'
GROUP BY kod_przed, nazwa
HAVING COUNT(*) >= ALL
(SELECT COUNT(DISTINCT wybor.kod_uz)
FROM przedmiot JOIN przedmiot_semestr USING(kod_przed)
	JOIN grupa USING(kod_przed_sem)
	JOIN wybor USING(kod_grupy)
WHERE rodzaj='p' 
	AND rodzaj_zajec='w'
GROUP BY przedmiot.kod_przed);

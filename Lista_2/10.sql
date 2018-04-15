WITH ile_na_wyklad AS
(SELECT kod_przed, COUNT(*) AS ile
FROM semestr JOIN przedmiot_semestr USING(semestr_id)
	JOIN grupa USING(kod_przed_sem)
	JOIN wybor USING(kod_grupy)
WHERE semestr.nazwa = 'Semestr letni 2010/2011'
	AND rodzaj_zajec = 'w'
GROUP BY kod_przed)

SELECT AVG(ile)
FROM ile_na_wyklad;

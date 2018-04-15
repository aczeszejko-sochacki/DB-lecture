SELECT semestr_id, nazwisko
FROM semestr JOIN przedmiot_semestr USING(semestr_id)
	JOIN grupa USING(kod_przed_sem)
	JOIN wybor USING(kod_grupy)
	JOIN uzytkownik ON(uzytkownik.kod_uz = wybor.kod_uz)
WHERE semestr.nazwa LIKE 'Semestr letni%'
GROUP BY semestr_id, data, nazwisko
HAVING data <= ALL
(SELECT data
FROM semestr s1 JOIN przedmiot_semestr USING(semestr_id)
	JOIN grupa USING(kod_przed_sem)
	JOIN wybor USING(kod_grupy)
	JOIN uzytkownik ON(uzytkownik.kod_uz = wybor.kod_uz)
WHERE semestr.nazwa LIKE 'Semestr letni%'
	AND s1.semestr_id = semestr.semestr_id);

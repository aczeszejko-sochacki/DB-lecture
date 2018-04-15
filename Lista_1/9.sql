SELECT semestr_id
FROM przedmiot_semestr JOIN przedmiot USING(kod_przed)
WHERE przedmiot.rodzaj = 'o'
GROUP BY semestr_id
HAVING count(kod_przed) > 0
ORDER BY count(kod_przed)
LIMIT 1;
	
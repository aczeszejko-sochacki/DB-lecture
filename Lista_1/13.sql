SELECT DATE_PART('year', MIN(data)) || '-' || DATE_PART('month', MIN(data)) || '-' ||
    DATE_PART('day', MIN(data)) AS od, DATE_PART('year', MAX(data)) || '-' ||
    DATE_PART('month', MAX(data)) || '-' || DATE_PART('day', MAX(data)) AS do
FROM wybor JOIN grupa USING(kod_grupy)
	JOIN przedmiot_semestr USING(kod_przed_sem)
	JOIN semestr USING(semestr_id)
WHERE nazwa = 'Semestr zimowy 2009/2010';
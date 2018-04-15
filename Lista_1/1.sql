SELECT nazwisko
FROM grupa JOIN uzytkownik USING(kod_uz)
	JOIN przedmiot_semestr USING(kod_przed_sem)
	JOIN przedmiot USING(kod_przed)
	JOIN semestr USING(semestr_id)
WHERE uzytkownik.semestr = 0 
	AND grupa.rodzaj_zajec = 'c'
	AND przedmiot.nazwa = 'Matematyka dyskretna (M)'
	AND semestr.nazwa = 'Semestr zimowy 2010/2011';
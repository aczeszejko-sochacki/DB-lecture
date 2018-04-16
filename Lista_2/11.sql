SELECT DISTINCT u1.imie, u1.nazwisko
FROM przedmiot JOIN przedmiot_semestr USING(kod_przed)
	JOIN grupa g1 ON(g1.kod_przed_sem = przedmiot_semestr.kod_przed_sem)
	JOIN uzytkownik u1 ON(u1.kod_uz = g1.kod_uz)
	JOIN grupa g2 ON(g2.kod_przed_sem = przedmiot_semestr.kod_przed_sem)
	JOIN uzytkownik u2 ON(u2.kod_uz = g2.kod_uz)
	JOIN grupa g3 ON(g3.kod_przed_sem = przedmiot_semestr.kod_przed_sem)
	JOIN uzytkownik u3 ON(u3.kod_uz = g3.kod_uz)
WHERE g1.rodzaj_zajec = 'w'
	AND g2.rodzaj_zajec <> 'w'
	AND g3.rodzaj_zajec <> 'w'
	AND g2.kod_grupy < g3.kod_grupy
	AND u1.kod_uz = u2.kod_uz
	AND u2.kod_uz = u3.kod_uz;
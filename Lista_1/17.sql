SELECT DISTINCT(uzytkownik.kod_uz)
FROM uzytkownik JOIN wybor w1 ON(uzytkownik.kod_uz = w1.kod_uz)
	JOIN grupa g1 ON(g1.kod_grupy = w1.kod_grupy)
	JOIN przedmiot_semestr ps1 ON(ps1.kod_przed_sem = g1.kod_przed_sem)
	JOIN przedmiot p1 ON(p1.kod_przed = ps1.kod_przed)
	JOIN wybor w2 ON(uzytkownik.kod_uz = w2.kod_uz)
	JOIN grupa g2 ON(g2.kod_grupy = w2.kod_grupy)
	JOIN przedmiot_semestr ps2 ON(ps2.kod_przed_sem = g2.kod_przed_sem)
	JOIN przedmiot p2 ON(p2.kod_przed = ps2.kod_przed)
WHERE p1.nazwa = 'Bazy danych'
	AND p2.nazwa = 'Bazy danych'
	AND ps1.kod_przed_sem > ps2.kod_przed_sem;
	
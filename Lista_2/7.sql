SELECT DISTINCT uzytkownik.kod_uz, imie, nazwisko 
FROM wybor JOIN grupa USING(kod_grupy)
	JOIN uzytkownik ON (uzytkownik.kod_uz=grupa.kod_uz)
GROUP BY grupa.kod_grupy, uzytkownik.kod_uz, imie, nazwisko, max_osoby
HAVING max_osoby < COUNT(*);
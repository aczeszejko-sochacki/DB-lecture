(SELECT DISTINCT uzytkownik.kod_uz, imie, nazwisko
FROM uzytkownik JOIN grupa USING(kod_uz)
WHERE rodzaj_zajec = 'w'
	AND imie <> '')
EXCEPT
(SELECT DISTINCT uzytkownik.kod_uz, imie, nazwisko
FROM uzytkownik JOIN grupa USING(kod_uz)
WHERE rodzaj_zajec = 's');
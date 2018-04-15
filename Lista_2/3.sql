SELECT DISTINCT uzytkownik.kod_uz, imie, nazwisko
FROM uzytkownik JOIN grupa USING(kod_uz)
WHERE rodzaj_zajec = 'w'
	AND imie <> ''
	AND NOT EXISTS(
SELECT *
FROM grupa g1
WHERE rodzaj_zajec = 's'
	AND uzytkownik.kod_uz = g1.kod_uz);
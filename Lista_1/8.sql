(SELECT count(przedmiot.kod_przed) as obowiazkowe
FROM przedmiot JOIN przedmiot_semestr USING (kod_przed)
WHERE rodzaj='o' AND semestr_id=27)
UNION ALL
(SELECT count(przedmiot.kod_przed)
FROM przedmiot JOIN przedmiot_semestr USING (kod_przed)
WHERE rodzaj='o' AND semestr_id=28)
UNION ALL
(SELECT count(przedmiot.kod_przed)
FROM przedmiot JOIN przedmiot_semestr USING (kod_przed)
WHERE rodzaj='o' AND semestr_id=32)
UNION ALL
(SELECT count(przedmiot.kod_przed)
FROM przedmiot JOIN przedmiot_semestr USING (kod_przed)
WHERE rodzaj='o' AND semestr_id=33)
UNION ALL
(SELECT count(przedmiot.kod_przed)
FROM przedmiot JOIN przedmiot_semestr USING (kod_przed)
WHERE rodzaj='o' AND semestr_id=38)UNION ALL
(SELECT count(przedmiot.kod_przed)
FROM przedmiot JOIN przedmiot_semestr USING (kod_przed)
WHERE rodzaj='o' AND semestr_id=39)
ORDER BY obowiazkowe
LIMIT 1;

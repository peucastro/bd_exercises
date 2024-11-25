-- What is the average number of exams per student?

SELECT AVG(C.count) AS AVG_EXAMS
FROM test T, (SELECT number, code, date, COUNT(*) AS count FROM test GROUP BY number) C
WHERE T.number = C.number AND T.code = C.code AND T.date = C.date

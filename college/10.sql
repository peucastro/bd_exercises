-- What is the average grade on the DB exams?

SELECT AVG(grade) AS AVG_BD_GRADE
FROM test
WHERE code = 'BD'

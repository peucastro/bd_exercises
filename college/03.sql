-- Are there common names for students and teachers? Which ones?

SELECT DISTINCT S.name
FROM student S, professor P
WHERE S.name = P.name;

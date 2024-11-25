-- What is the name and current average grade (courses taken, in any programme) of each student?

SELECT S.name AS NAME, AVG(T.grade) AS AVG_GRADE
FROM student S, test T
WHERE S.number = T.number
GROUP BY S.number

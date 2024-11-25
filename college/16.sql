-- What is the maximum grade for each course and which student got it?

SELECT T.code AS UC, MAX(T.grade) AS MAX_GRADE, S.name AS STUDENT_NAME
FROM student S, test T
WHERE S.number = T.number
GROUP BY T.code

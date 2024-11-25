-- What are the specific names of students, i.e. that no professors have?

SELECT S.name AS NAME FROM student S
EXCEPT
SELECT P.name FROM professor P

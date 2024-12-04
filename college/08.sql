-- What are the names of the students who completed the programme 'IS'?

DROP VIEW IF EXISTS IS_COURSES;

CREATE VIEW IS_COURSES AS
SELECT code
FROM course
WHERE programme = 'IS';

SELECT S.name
FROM Test T, Student S
WHERE T.number = S.number AND T.grade >= 10 AND T.code IN (
    SELECT code FROM IS_COURSES
)
GROUP BY T.number
HAVING COUNT(DISTINCT T.code) = (
    SELECT COUNT(*)
    FROM IS_COURSES
)

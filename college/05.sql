-- What are the names of people related to the faculty?

SELECT DISTINCT name FROM student
UNION
SELECT DISTINCT name FROM professor

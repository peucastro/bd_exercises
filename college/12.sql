-- What is the number of curricular courses in each programme?

SELECT programme AS PROGRAMEE, COUNT(*) AS COURSE_COUNT
FROM course
GROUP BY programme

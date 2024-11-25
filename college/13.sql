-- What is the number of exams for each student?

SELECT number AS STUDENT_NR, COUNT(*) AS EXAM_COUNT
FROM test
GROUP BY number

-- What are the names of students who have taken any 'ST1' exam?

SELECT DISTINCT S.name
FROM test T, student S
WHERE T.number = S.number AND T.code = 'TS1'

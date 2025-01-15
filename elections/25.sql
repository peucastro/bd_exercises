-- What is the average number of parishes per municipality? Round this AVERAGE with two decimal digits.

SELECT ROUND(AVG(parishes_count), 2) AS AVERAGE
FROM (
    SELECT COUNT(*) as parishes_count
    FROM parishes P
    JOIN municipalities M ON M.code = P.municipality
    GROUP BY M.code
)

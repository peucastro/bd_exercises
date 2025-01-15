-- What is the district with the most municipalities?

-- List the name of the district and the number of municipalities (NR_MUN).

SELECT D.name, COUNT(*) AS NR_MUN
FROM districts D
JOIN municipalities M ON M.district = D.code
GROUP BY D.code
ORDER BY NR_MUN DESC
LIMIT 1

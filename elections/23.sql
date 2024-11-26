-- What is the district with the most municipalities?

-- List the name of the district and the number of municipalities (NR_MUN).

SELECT D.name, COUNT(*) AS NR_MUN
FROM municipalities M, districts D
WHERE M.district = D.code
GROUP BY D.code
ORDER BY COUNT(*) DESC
LIMIT 1

-- Which is the municipality with the most parishes?

-- List the name of the municipality and its number of parishes (NR_PAR).

SELECT M.name, COUNT(*) AS NR_PAR
FROM municipalities m
JOIN parishes P ON P.municipality = M.code
GROUP BY M.code
ORDER BY NR_PAR DESC
LIMIT 1

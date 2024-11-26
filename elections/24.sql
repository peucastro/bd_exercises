-- Which is the municipality with the most parishes?

-- List the name of the municipality and its number of parishes (NR_PAR).

SELECT M.name, COUNT(*) AS NR_PAR
FROM parishes P, municipalities M
WHERE P.municipality = M.code
GROUP BY M.code
ORDER BY COUNT(*) DESC
LIMIT 1

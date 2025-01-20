-- Select the names of the municipalities with more than 20 parishes that have the same number of parishes as the number of municipalities of the district (or region) to where they belong.

-- List the the name of the municipality (MNAME), the name of the district (DNAME) and the total number of parishes (TOTAL). Order on the name of the municipality.

SELECT M.name AS MNAME, D.name AS DNAME, COUNT(P.code) AS TOTAL
FROM parishes P
JOIN municipalities M ON M.code = P.municipality
JOIN districts D ON D.code = M.district
GROUP BY M.code
HAVING TOTAL > 20 AND TOTAL = (
    SELECT COUNT(M1.code)
    FROM municipalities M1
    WHERE M1.district = M.district
)
ORDER BY MNAME;

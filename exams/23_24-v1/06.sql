-- For all districts in table districts, select the district name and the total number of parishes (as TOTAL) with name 'Nogueira' that belong to that district. Order on the name of the district.

SELECT D.name, COUNT(P.name) AS TOTAL
FROM districts D
JOIN municipalities M ON M.district = D.code
LEFT JOIN parishes P ON P.municipality = M.code AND P.name = 'Nogueira'
GROUP BY D.code
ORDER BY D.name;

-- What is the code and the name of the district of the parish of Mancelos?

SELECT D.code, D.name
FROM parishes P
JOIN municipalities M ON P.municipality = M.code
JOIN districts D ON M.district = D.code
WHERE P.name='Mancelos'

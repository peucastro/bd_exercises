-- What is the code and the name of the district of the parish of Mancelos?

SELECT D.code, D.name
FROM parishes P, municipalities M, districts D
WHERE P.municipality = M.code AND M.district = D.code AND P.name='Mancelos'

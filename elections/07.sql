-- What are the parishes of region 'M' where the party 'PSN' obtained zero votes? List the code and name of the parish, in ascending order on the code.

SELECT DISTINCT P.code, P.name
FROM parishes P, municipalities M, districts D, votings V
WHERE P.municipality = M.code AND M.district = D.code AND D.region = 'M' AND V.parish = P.code AND V.party = 'PSN' AND V.votes = 0
ORDER BY P.code ASC;

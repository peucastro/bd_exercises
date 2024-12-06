-- What are the parishes of region 'M' where the party 'PSN' obtained zero votes? List the code and name of the parish, in ascending order on the code.

SELECT DISTINCT P.code, P.name
FROM parishes P
JOIN municipalities M ON M.code = P.municipality
JOIN districts D ON D.code = M.district
JOIN votings V ON V.parish = P.code
WHERE D.region = 'M' AND V.party = 'PSN' AND V.votes = 0
ORDER BY P.code ASC;

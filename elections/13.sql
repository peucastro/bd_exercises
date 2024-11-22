-- What are the names of the municipalities of the district with the higher number of voters?

-- Order ascendantly by the name of the municipality.

SELECT DISTINCT M.name
FROM participations P, districts D, municipalities M
WHERE P.district = D.code AND M.district = D.code AND NOT EXISTS (SELECT * FROM participations P1 WHERE P1.voters > P.voters)
ORDER BY M.name;

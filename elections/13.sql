-- What are the names of the municipalities of the district with the higher number of voters?

-- Order ascendantly by the name of the municipality.

SELECT DISTINCT M.name
FROM participations P
JOIN districts D ON D.code = P.district
JOIN municipalities M ON M.district = D.code
WHERE NOT EXISTS (SELECT * FROM participations P1 WHERE P1.voters > P.voters)
ORDER BY M.name;

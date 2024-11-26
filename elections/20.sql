-- Which parties had zero votes on all parishes of a municipality? List the acronym and the name of the municipality.

-- Order ascendantly by the acronym and the name of the municipality.

SELECT PTS.acronym AS PARTY, M.name AS NAME
FROM votings V, parishes PSH, municipalities M, parties PTS
WHERE V.parish = PSH.code AND V.party = PTS.acronym AND PSH.municipality = M.code
GROUP BY PTS.acronym, M.code
HAVING SUM(V.votes) = 0
ORDER BY PARTY, NAME

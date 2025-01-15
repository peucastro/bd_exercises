-- Which parties had zero votes on all parishes of a municipality? List the acronym and the name of the municipality.

-- Order ascendantly by the acronym and the name of the municipality.

SELECT V.party AS PARTY, M.name AS NAME
FROM votings V
JOIN parishes P ON P.code = V.parish
JOIN municipalities M ON M.code = P.municipality
GROUP BY PARTY, M.code
HAVING SUM(V.votes) = 0
ORDER BY PARTY, NAME

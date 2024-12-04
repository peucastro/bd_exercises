-- Was there any party winning on all parishes of any municipality of the district of Porto?

-- List the code and name of the municipality and the acronym of the party.

-- Order ascendantly by the code of the municipality and the acronym of the party.

SELECT M.code, M.name, V.party AS PARTY
FROM votings V, parishes P, municipalities M, districts D
WHERE V.parish = P.code AND P.municipality = M.code AND M.district = D.code AND D.name = 'Porto' AND V.votes = (
    SELECT MAX(V1.votes)
    FROM votings V1
    WHERE V1.parish = P.code
)
GROUP BY M.code, V.party
HAVING COUNT(P.code) = (
    SELECT COUNT(P2.code)
    FROM parishes P2
    WHERE P2.municipality = M.code
)
ORDER BY M.code, V.party

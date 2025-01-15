-- How many votes had each party per district? List the code of the district, the name of the district, the acronym of the party and the number of votes, named 'VOTES'.

-- Order ascendantly on the code of the district and the acronym of the party.

SELECT D.code, D.name, V.party, SUM(V.votes) AS VOTES
FROM votings V
JOIN parishes P on P.code = V.parish
JOIN municipalities M on M.code = P.municipality
JOIN districts D on D.code = M.district
GROUP BY D.code, V.party
ORDER BY D.code ASC, V.party ASC;

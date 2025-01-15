-- How many votes had each party in each municipality?

-- List the code and name of the municipality, the acronym of the party and the number of votes (name this column VOTES), by increasing order on the code of the municipality and the acronym of the party. Show only the first 40 lines.

SELECT M.code, M.name, V.party, SUM(V.votes) AS VOTES
FROM votings V
JOIN parishes P on P.code = V.parish
JOIN municipalities M on M.code = P.municipality
GROUP BY M.code, V.party
ORDER BY M.code ASC
LIMIT 40;

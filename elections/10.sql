-- How many votes had each party in each municipality?

-- List the code and name of the municipality, the acronym of the party and the number of votes (name this column VOTES), by increasing order on the code of the municipality and the acronym of the party. Show only the first 40 lines.

SELECT M.code, M.name, PTS.acronym AS PARTY, sum(V.votes) AS VOTES
FROM votings V
JOIN parishes PSH ON PSH.code = V.parish
JOIN municipalities M ON M.code = PSH.municipality
JOIN parties PTS ON PTS.acronym = V.party
GROUP BY M.code, PTS.acronym
ORDER BY M.code, PTS.acronym
LIMIT 40;

-- How many votes had each party per district? List the code of the district, the name of the district, the acronym of the party and the number of votes, named 'VOTES'.

-- Order ascendantly on the code of the district and the acronym of the party.

SELECT D.code, D.name, PTS.acronym AS PARTY, SUM(V.votes) AS VOTES
FROM votings V
JOIN parishes PSH ON PSH.code = V.parish
JOIN municipalities M ON M.code = PSH.municipality
JOIN districts D ON D.code = M.district
JOIN parties PTS ON PTS.acronym = V.party
GROUP BY D.code, PTS.acronym
ORDER BY D.code, PTS.acronym

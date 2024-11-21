-- How many votes had each party per district? List the code of the district, the name of the district, the acronym of the party and the number of votes, named 'VOTES'.

-- Order ascendantly on the code of the district and the acronym of the party.

SELECT D.code, D.name, PTS.acronym AS PARTY, SUM(V.votes) AS VOTES
FROM votings V, parishes PSH, municipalities M, districts D, parties PTS
WHERE V.parish = PSH.code AND PSH.municipality = M.code AND m.district = D.code AND V.party = PTS.acronym
GROUP BY D.code, PTS.acronym
ORDER BY D.code, PTS.acronym

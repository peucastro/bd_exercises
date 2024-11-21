-- How many votes had each party globally?

-- As we want the global result, the administrative division is irrelevant.

-- List the acronym of the party and the total number of votes, name VOTES. Order ascendantly by the acronym.

SELECT p.acronym AS PARTY, SUM(V.votes) AS VOTES
FROM votings V, parties P
WHERE V.party = P.acronym
GROUP BY P.acronym
ORDER BY P.acronym
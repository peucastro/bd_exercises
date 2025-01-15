-- How many votes had each party globally?

-- As we want the global result, the administrative division is irrelevant.

-- List the acronym of the party and the total number of votes, name VOTES. Order ascendantly by the acronym.

SELECT party, SUM(votes) AS VOTES
FROM votings
GROUP BY party
ORDER BY party ASC;

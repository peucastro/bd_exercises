-- What is the total of votes of each of the 5 major parties?

-- List the acronym and the total of votes as TOTAL, ordered decreasingly on the number of votes.

SELECT V.party AS PARTY, SUM(V.votes) AS TOTAL
FROM votings V
GROUP BY V.party
ORDER BY TOTAL DESC
LIMIT 5

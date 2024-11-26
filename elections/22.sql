-- What is the total of votes of each of the 5 major parties?

-- List the acronym and the total of votes as TOTAL, ordered decreasingly on the number of votes.

SELECT PTS.acronym AS PARTY, SUM(V.votes) AS TOTAL
FROM votings V, parishes PSH, municipalities M, parties PTS
WHERE V.parish = PSH.code AND V.party = PTS.acronym AND PSH.municipality = M.code
GROUP BY PTS.acronym
ORDER BY SUM(V.votes) DESC
LIMIT 5

-- Select the designation and the total number of votes as TOTAL of each party in the district of Porto. Order descendently on the number of votes.

SELECT PTS.designation, SUM(V.votes) AS TOTAL
FROM votings V
JOIN parties PTS ON PTS.acronym = V.party
JOIN parishes P ON P.code = V.parish
JOIN municipalities M ON M.code = P.municipality
JOIN districts D ON D.code = M.district
WHERE D.name = "Porto"
GROUP BY PTS.acronym
ORDER BY TOTAL DESC;

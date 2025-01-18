-- Select the name of each district and the total number of votes (as VOTES) in parties in that district. Order descendently on the number of votes.

SELECT D.name, SUM(V.votes) AS VOTES
FROM votings V
JOIN parishes P ON P.code = V.parish
JOIN municipalities M ON M.code = P.municipality
JOIN districts D ON D.code = M.district
GROUP BY D.code
ORDER BY VOTES DESC;

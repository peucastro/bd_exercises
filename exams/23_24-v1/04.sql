-- For the third municipality with the most votes, list the acronym and the number of votes (as VOTES of the least voted party on that municipality.

DROP VIEW IF EXISTS MUN_VOTES;
DROP VIEW IF EXISTS THIRD;

CREATE VIEW MUN_VOTES AS
SELECT P.municipality AS MUNICIPALITY, SUM(V.votes) AS VOTES
FROM votings V
JOIN parishes P ON P.code = V.parish
GROUP BY MUNICIPALITY
ORDER BY VOTES DESC
LIMIT 3;

CREATE VIEW THIRD AS
SELECT *
FROM MUN_VOTES
ORDER BY VOTES ASC
LIMIT 1;

SELECT V.party, SUM(V.votes) AS VOTES
FROM THIRD T
JOIN parishes P ON P.municipality = T.MUNICIPALITY
JOIN votings V ON V.parish = P.code
GROUP BY V.party
ORDER BY VOTES ASC
LIMIT 1;

-- Was there any party winning on all municipalities of a district?

-- List the code and name of the district and the acronym of the party. Order ascendantly by code.

DROP VIEW IF EXISTS Win_Municipalities;

CREATE VIEW Win_Municipalities AS
SELECT M.district AS district, M.code AS municipality, V.party AS party, SUM(V.votes) AS total_votes
FROM votings V, parishes P, municipalities M
WHERE V.parish = P.code AND P.municipality = M.code
GROUP BY M.district, M.code, V.party
HAVING SUM(V.votes) = (
    SELECT MAX(SUM_VOTES)
    FROM (
        SELECT V1.party, SUM(V1.votes) AS SUM_VOTES
        FROM votings V1, parishes P1
        WHERE V1.parish = P1.code AND P1.municipality = M.code
        GROUP BY V1.party
    )
);

SELECT D.code, D.name, W.party AS PARTY
FROM Win_Municipalities W, districts D
WHERE W.district = D.code
GROUP BY D.code, W.party
HAVING COUNT(W.PARTY) = (
    SELECT COUNT(*)
    FROM municipalities M
    WHERE M.district = D.code
)
ORDER BY D.code, W.party;

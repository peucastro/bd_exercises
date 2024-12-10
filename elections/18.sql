-- Was there any party winning on all municipalities of a district?

-- List the code and name of the district and the acronym of the party. Order ascendantly by code.

WITH WIN_MUNICIPALITIES AS (
    SELECT P.MUNICIPALITY, V.PARTY AS PARTY, SUM(VOTES) VOTES
    FROM VOTINGS V JOIN PARISHES P ON V.PARISH=P.CODE
    GROUP BY P.MUNICIPALITY, V.PARTY
    HAVING (P.MUNICIPALITY, SUM(VOTES)) IN (
        SELECT X.MUNICIPALITY, MAX(X.TOTAL)
        FROM (SELECT Y.MUNICIPALITY, Z.PARTY, SUM(Z.VOTES) TOTAL
            FROM VOTINGS Z JOIN PARISHES Y ON Z.PARISH=Y.CODE
            GROUP BY Y.MUNICIPALITY, Z.PARTY) X
        GROUP BY X.MUNICIPALITY
    )
)
SELECT D.code, D.name, W.PARTY
FROM WIN_MUNICIPALITIES W JOIN municipalities M ON W.MUNICIPALITY = M.code JOIN districts D ON D.code = M.district
GROUP BY D.code, W.PARTY
HAVING COUNT(W.PARTY) = (
    SELECT COUNT(*)
    FROM municipalities M
    WHERE M.district = D.code
)
ORDER BY D.code, W.PARTY;

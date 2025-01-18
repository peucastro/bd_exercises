-- Select the total number of municipalities (as M) where the party with the acronym 'CDSPP' had more votes on all parishes of that municipality than the party with the acronym 'PCPPEV'

DROP VIEW IF EXISTS MVOTES;

CREATE VIEW MVOTES AS
SELECT M.code, M.district, V.party, SUM(V.votes) AS VOTES
FROM municipalities M
JOIN parishes P ON P.municipality = M.code
JOIN votings V ON V.parish = P.code
GROUP BY M.code, V.party;

SELECT D.code
FROM districts D
WHERE D.code NOT IN (
    SELECT M1.district
    FROM MVOTES M1 JOIN MVOTES M2 ON M1.code = M2.code
    WHERE M1.party = 'CDSPP' AND M2.party = 'PCPPEV' AND M1.VOTES <= M2.VOTES
)
ORDER BY D.code;

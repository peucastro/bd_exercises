-- For each district, list the name of the district, the party designation and the number of votes of the party that had the higher number of votes.

-- Order ascendantly by the name of the district.

SELECT D.name AS NAME, PTS.designation AS DESIGNATION, MAX(VT.total_votes) AS VOTES
FROM districts D, parties PTS,
    (
        SELECT D1.code AS district_code, V.party AS party_acronym, SUM(V.votes) AS total_votes
        FROM votings V, parishes PSH, municipalities M, districts D1
        WHERE V.parish = PSH.code AND PSH.municipality = M.code AND M.district = D1.code
        GROUP BY D1.code, V.party
    ) VT
WHERE D.code = VT.district_code AND PTS.acronym = VT.party_acronym
GROUP BY D.code
ORDER BY D.name;

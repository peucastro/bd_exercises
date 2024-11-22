-- What are the acronyms of the parties that presented a list but obtained zero seats on all the districts that have an "o" or an "O" in its name?

-- Order ascendantly by acronym.

SELECT P.acronym AS PARTY
FROM lists L, districts D, parties P
WHERE L.district = D.code AND L.party = P.acronym AND (D.name LIKE '%o%' OR D.name LIKE '%O%')
GROUP BY P.acronym
HAVING COUNT(L.district) = (
    SELECT COUNT(D1.code)
    FROM districts D1
    WHERE D1.name LIKE '%o%' OR D1.name LIKE '%O%'
)
AND SUM(L.seats) = 0
ORDER BY P.acronym;
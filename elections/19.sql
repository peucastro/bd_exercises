-- What are the municipalities of the same district with the same number of parishes?

-- List the code of the district, the names of the municipalities and the common number of parishes, without repetitions such as (A,B) and (B,A).

-- Order ascendantly on the district's code, name of the first municipality and name of the second municipality.

SELECT X1.district AS code, X1.municipality AS namea, X2.municipality AS nameb, X1.parishes_count AS c
FROM (
    SELECT COUNT(P1.code) AS parishes_count, M1.name AS municipality, D1.code AS district
    FROM parishes P1, municipalities M1, districts D1
    WHERE P1.municipality = M1.code AND M1.district = D1.code
    GROUP BY P1.municipality
    ) X1,
    (
    SELECT COUNT(P2.code) AS parishes_count, M2.name AS municipality, D2.code AS district
    FROM parishes P2, municipalities M2, districts D2
    WHERE P2.municipality = M2.code AND M2.district = D2.code
    GROUP BY P2.municipality
    ) X2
WHERE X1.district = X2.district AND X1.municipality < X2.municipality AND X1.parishes_count = X2.parishes_count
ORDER BY x1.district, X1.municipality, X2.municipality

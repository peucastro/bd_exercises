-- Obtain the average number of parishes (as MEDIA) of the municipalities of the district of 'Lisboa'.

WITH NUM_PA AS (
    SELECT M.code AS mun, COUNT(*) AS pa
    FROM parishes P
    JOIN municipalities M ON M.code = P.municipality
    JOIN districts D ON D.code = M.district
    WHERE D.name = "Lisboa"
    GROUP BY M.code
    )
SELECT AVG(pa) AS MEDIA
FROM NUM_PA;

-- Select the names of the municipalities with more than 20 parishes that have the same number of parishes as the number of municipalities of the district (or region) to where they belong.

-- List the the name of the municipality MNAME, the name of the district DNAME and the total number of parishes TOTAL. Order on the name of the municipality

DROP VIEW IF EXISTS MUN_WITH_MORE_THAN_20_P;
DROP VIEW IF EXISTS DIST_MUN_COUNT;

CREATE VIEW MUN_WITH_MORE_THAN_20_P AS
SELECT M.CODE AS MUN, M.district AS M_DIST, COUNT(*) AS P_COUNT
FROM municipalities M
JOIN parishes P ON P.municipality = M.code
GROUP BY M.code
HAVING P_COUNT > 20;

CREATE VIEW DIST_MUN_COUNT AS
SELECT M.district AS DIST, COUNT(*) AS M_COUNT
FROM municipalities M
GROUP BY M.district;

SELECT M.name AS MNAME, D.name AS DNAME, MWMT2P.P_COUNT AS TOTAL
FROM MUN_WITH_MORE_THAN_20_P MWMT2P
JOIN DIST_MUN_COUNT DMC ON DMC.DIST = MWMT2P.M_DIST
JOIN municipalities M ON M.code = MWMT2P.MUN
JOIN DISTRICTS D ON D.code = M.district
WHERE MWMT2P.P_COUNT = DMC.M_COUNT
ORDER BY M.name;

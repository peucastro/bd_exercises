-- Select the names of the municipalities with more than 20 parishes that have the same number of parishes as the number of municipalities of the district (or region) to where they belong.

-- List the the name of the municipality (MNAME), the name of the district (DNAME) and the total number of parishes (TOTAL). Order on the name of the municipality.

DROP VIEW IF EXISTS MUN_PAR_COUNT;
DROP VIEW IF EXISTS DIST_MUN_COUNT;

CREATE VIEW MUN_PAR_COUNT AS
SELECT M.code as mun, COUNT(*) AS pcount
FROM municipalities M
JOIN parishes P ON P.municipality = M.code
GROUP BY M.code;

CREATE VIEW DIST_MUN_COUNT AS
SELECT D.code as dist, COUNT(*) AS mcount
FROM districts D
JOIN municipalities M ON M.district = D.code
GROUP BY D.code;

SELECT M.name AS MNAME, D.name AS DNAME, pcount AS TOTAL
FROM municipalities M
JOIN districts D ON D.code = M.district
JOIN MUN_PAR_COUNT MPC ON MPC.mun = M.code
JOIN DIST_MUN_COUNT DMC ON DMC.dist = M.district
WHERE pcount > 20 AND pcount = mcount
ORDER BY MNAME;

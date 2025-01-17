-- Select the names of districts from region 'C' for which there is also a parish with the same name. Order on the name

SELECT DISTINCT D.name
FROM districts D
JOIN municipalities M ON M.district = D.code
JOIN parishes P ON P.municipality = M.code
WHERE D.name = P.name AND D.region = "C"
ORDER BY D.name;

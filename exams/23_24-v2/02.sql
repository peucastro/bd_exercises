-- Select the names of the municipalities for which there is a parish for a different municipality with the same name. Order on the name.

SELECT DISTINCT M.name
FROM municipalities M
WHERE M.name IN (
    SELECT P.name
    FROM parishes P
    WHERE P.municipality <> M.code AND P.name = M.name
)
ORDER BY M.name;

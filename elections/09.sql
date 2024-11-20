-- How many parishes have “Vilar” on the name?

SELECT count(*)
FROM parishes
WHERE name LIKE '%Vilar%'

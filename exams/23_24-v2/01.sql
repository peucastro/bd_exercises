-- Select the names of the municipalities whose name is longer than 20 characters (note: in SQLite there is a function length(string) that returns the number of characters of a string). Order in the name of the municipality.

SELECT M.name
FROM municipalities M
WHERE length(M.name) > 20
ORDER BY name;

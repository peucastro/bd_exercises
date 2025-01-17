-- Select the acronym and designation from parties where the first letter from the acronym is different from the first letter of the designation

-- (note: in sqlite there is a function substr( string, start, length )). Order on the acronym.

SELECT acronym, designation
FROM parties
WHERE substr(acronym, 1, 1) <> substr(designation, 1, 1)
ORDER BY acronym;

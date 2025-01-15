-- What are the names of the municipalities of the district with the higher number of voters?

-- Order ascendantly by the name of the municipality.

SELECT name
FROM municipalities
WHERE district = (
    SELECT district
    FROM participations
    ORDER BY voters DESC
    LIMIT 1
)
ORDER BY name;

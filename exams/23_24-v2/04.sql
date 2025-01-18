-- Select the name of the district that elected the fifth higher number of seats.

WITH TOP5 AS (
    SELECT district, seats
    FROM lists L
    ORDER BY L.seats DESC
    LIMIT 5
)
SELECT D.name
FROM TOP5
JOIN districts D ON D.code = TOP5.district
ORDER BY TOP5.seats ASC
LIMIT 1;

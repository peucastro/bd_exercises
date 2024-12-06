-- How many seats obtained each party on the district of the parish of Mancelos, in decreasing order of the number of seats? List the acronym and the number of seats.

SELECT L.party, L.seats
FROM parishes P
JOIN municipalities M on M.code = P.municipality
JOIN districts D ON D.code = M.district
JOIN lists L on L.district = D.code
WHERE P.name='Mancelos'
ORDER BY L.seats DESC;

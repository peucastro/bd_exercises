-- How many seats obtained each party on the district of the parish of Mancelos, in decreasing order of the number of seats? List the acronym and the number of seats.

SELECT L.party, L.seats
FROM parishes P, municipalities M, districts D, lists L
WHERE P.municipality = M.code AND M.district = D.code AND L.district = D.code AND P.name='Mancelos'
ORDER BY L.seats DESC;

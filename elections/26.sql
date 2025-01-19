-- Compute, in an approximate way, dividing the total votes of a party in the district by the total number of seats of that party in the same district, how many votes are necessary to elect a deputy on each district.

-- List the acronym of the party, the name of the district, the sum of the votes (VOTES), the number of seats and the ratio of VOTES_PER_DEPUTY, rounded as an integer. Order by this last column.

-- Note: to compute more accuratly this number of votes it would be necessary to implement the Hondt method, which is used on these elections.

SELECT V.party, D.name, SUM(V.votes) VOTES, L.seats, ROUND(SUM(V.votes)/L.SEATS,0) VOTES_PER_DEPUTY
FROM votings V
JOIN parishes P ON P.code = V.parish
JOIN municipalities M ON M.code = P.municipality
JOIN districts D ON D.code = M.district
JOIN lists L ON D.code = L.district AND V.party = L.party
WHERE L.seats > 0
GROUP BY V.party, D.name, L.seats
ORDER BY VOTES_PER_DEPUTY;

-- What was the party that had the highest number of votes in a single parish?

--List the acronym of the party, the name of the parish and the number of votes it obtained in that parish.

SELECT V.party, P.name, V.votes
FROM parishes P
JOIN votings V ON V.parish = P.code
ORDER BY V.votes DESC
LIMIT 1;

-- What was the party that had the highest number of votes in a single parish?

--List the acronym of the party, the name of the parish and the number of votes it obtained in that parish.

SELECT PTS.acronym AS PARTY, PSH.name, V.votes
FROM votings V
JOIN parishes PSH ON PSH.code = V.parish
JOIN parties PTS ON PTS.acronym = V.party
WHERE NOT EXISTS (SELECT * FROM votings V1 WHERE V1.votes > V.votes);

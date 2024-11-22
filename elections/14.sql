-- What was the party that had the highest number of votes in a single parish?

--List the acronym of the party, the name of the parish and the number of votes it obtained in that parish.

SELECT PTS.acronym AS PARTY, PSH.name, V.votes
FROM votings V, parishes PSH, parties PTS
WHERE V.parish = PSH.code AND V.party = PTS.acronym AND NOT EXISTS (SELECT * FROM votings V1 WHERE V1.votes > V.votes);

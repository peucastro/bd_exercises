-- What were the results obtained by each party in the parish of Mancelos? List the acronym of each party and the number of votes it got, descending on the number of votes and ascendingly by acronym.

SELECT V.party, V.votes
FROM parishes P, votings V
WHERE P.code = V.parish AND P.name='Mancelos'
ORDER BY P.code ASC, V.votes DESC;

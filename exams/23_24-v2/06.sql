-- Select the acronyms of all parties and the total number of parishes (as NPARISHES) where they obtained more than 1000 votes. Order descendently on NPARISHES.

SELECT PTS.acronym, SUM(V.votes > 1000) AS NPARISHES
FROM parties PTS
JOIN votings V ON V.party = PTS.acronym
GROUP BY V.party
ORDER BY NPARISHES DESC;

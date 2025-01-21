-- Select the acronyms of all parties and the total number of parishes (as NPARISHES) where they obtained more than 1000 votes. Order descendently on NPARISHES.

SELECT party, SUM(votes > 1000) AS NPARISHES
FRMO votings
GROUP BY V.party
ORDER BY NPARISHES DESC, party;

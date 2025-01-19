-- What are the differences on the percentages of seats and of votes at the global level? List the acronym of the party and a column DIFFERENCE, ordered by DIFFERENCE decreasingly.

-- Note: to force an arithmetic operation between integer numbers to result in a real number, multiply one of the integers by 1.0.

SELECT G.party, (SEATSP*1.0/SEATST-VOTESP*1.0/VOTEST) * 100.0 AS DIFFERENCE
FROM (SELECT party, SUM(votes) VOTESP FROM votings GROUP BY party) G,
    (SELECT party, SUM(seats) SEATSP FROM LISTS GROUP BY party) M,
    (SELECT SUM(voters) VOTEST FROM participations) TV,
    (SELECT SUM(seats) SEATST FROM lists) TM
WHERE G.party = M.party
ORDER BY DIFFERENCE DESC;

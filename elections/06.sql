-- List the district name, the number of voters and the number of abstentions, but only in the case where the number of abstentions in the district is higher than 75% of the number of voters. Order by district name.

SELECT d.name, P.voters, P.abstentions
FROM districts D
JOIN participations P on P.district = D.code
WHERE P.abstentions > 0.75 * P.voters
ORDER BY d.name;

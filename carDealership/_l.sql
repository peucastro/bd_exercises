-- Who owns the car with the most expensive repair?

SELECT C.name
FROM repairpart RP, repair R, part P, client C
WHERE RP.repairId = R.repairId AND RP.partId = P.partId AND R.clientId = C.clientId
GROUP BY R.clientId, R.repairId
HAVING SUM(P.unitCost * RP.quantity) = (
    SELECT MAX(SUM_COST)
    FROM (
        SELECT SUM(P.unitCost * RP.quantity) AS SUM_COST
        FROM repairpart RP, repair R, part P
        WHERE RP.repairId = R.repairId AND RP.partId = P.partId
        GROUP BY R.repairId
    )
)
LIMIT 1;

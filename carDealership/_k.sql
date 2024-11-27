-- What is the total price of repairs with a total cost over 60€?

SELECT R.repairId, SUM(P.unitCost * RP.quantity) AS TOTAL_PRICE
FROM repairpart RP, repair R, part P
WHERE RP.repairId = R.repairId AND RP.partId = P.partId
GROUP BY R.repairId
HAVING SUM(P.unitCost * RP.quantity) > 60;

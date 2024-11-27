-- What is the total price of each repair?


SELECT R.repairId, SUM(P.unitCost * RP.quantity) AS TOTAL_PRICE
FROM repairpart RP, repair R, part P
WHERE RP.repairId = R.repairId AND RP.partId = P.partId
GROUP BY R.repairId

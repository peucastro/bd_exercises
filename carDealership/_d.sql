-- What are the names of the customers who own cars that used parts costing more than $10 per unit?

-- Present the result sorted in descending order of unit cost.

SELECT C.name
FROM client C, repair R, part P, repairPart RP, car CR
WHERE C.clientId = R.clientId AND RP.repairId = R.repairId AND RP.partId = P.partId AND R.idCar = CR.idCar AND P.unitCost > 10
ORDER BY P.unitCost DESC

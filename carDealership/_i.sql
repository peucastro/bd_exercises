-- Which specialty was used most often in car repairs for each brand?

SELECT B.brandId, S.name AS specialtyName, COUNT(*) AS usageCount
FROM WorkerRepair WR, Employee E, Repair R, Car C, Model M, Brand B, Specialty S
WHERE WR.employeeId = E.employeeId AND WR.repairId = R.repairId AND R.idCar = C.idCar AND C.modelId = M.modelId AND M.brandId = B.brandId AND E.specialyId = S.specialyId
GROUP BY B.brandId, S.name
HAVING COUNT(*) = (
    SELECT MAX(usageCount)
    FROM (
        SELECT COUNT(*) AS usageCount
        FROM WorkerRepair WR1, Employee E1, Repair R1, Car C1, Model M1, Brand B1, Specialty S1
        WHERE WR1.employeeId = E1.employeeId AND WR1.repairId = R1.repairId AND R1.idCar = C1.idCar AND C1.modelId = M1.modelId AND M1.brandId = B1.brandId AND E1.specialyId = S1.specialyId AND B1.brandId = B.brandId
        GROUP BY S1.name
    ) AS subquery
)
ORDER BY B.brandId;

-- What is the number of repairs made to each car?

SELECT C.licensePlate AS CAR, COUNT(C.idCar) AS REPAIR_COUNT
FROM repair R, car C
WHERE R.idCar = C.idCar
GROUP BY C.idCar

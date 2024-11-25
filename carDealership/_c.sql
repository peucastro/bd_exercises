-- What are the license plates of the cars that were repaired in the month of September 2010, i.e. whose repair ended in that month?

SELECT DISTINCT C.licensePlate
FROM repair R, car C
WHERE R.idCar = C.idCar AND R.endDate LIKE '2010-09-%'

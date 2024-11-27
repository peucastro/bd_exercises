-- What is the average unit cost, total value and number of units of the parts, and the value of the most expensive and the cheapest part?

SELECT AVG(unitCost), SUM(unitCost), COUNT(*), MAX(unitCost), MIN(unitCost)
FROM part

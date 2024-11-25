-- What are the names of the customers who do not (as far as we know) own a car?

SELECT C.name AS NAME
FROM client C
WHERE C.clientId NOT IN (
    SELECT C1.clientId
    FROM client C1, car CR
    WHERE C1.clientId = CR.clientId
    )

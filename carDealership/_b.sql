-- Which parts with unit cost less than 10€ and whose code contains '98'?

SELECT partid
FROM part
WHERE unitCost < 10 AND code LIKE '%98%'

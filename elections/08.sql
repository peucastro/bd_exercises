-- What were the parties that did not compete in the district of Lisboa? List the acronym and designation, in increasing order of the acronym.

SELECT acronym, designation
FROM parties
WHERE acronym NOT IN (SELECT L.party FROM lists L, districts D WHERE L.district = D.code AND D.name = 'Lisboa');

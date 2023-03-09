USE thingworxapps
	

SELECT
	p.name,
	p.displayname,
	pt.name,
	p.enabled
FROM product p
INNER JOIN producttype pt on pt.uid = p.producttypeuid
WHERE p.enabled = 1
ORDER BY pt.name
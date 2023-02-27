USE thingworxapps

SELECT
	pp.name as ProdcutioPathName,
	pp.displayname as DisplayName,
	--pp.equipmentuid,
	--pp.uid,
	eq.name,
	--eq.displayname
	pp.isreleased
	--eq.uid,
	--et.equipmentlevel
FROM productionpath pp
INNER JOIN equipment eq on eq.uid = pp.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
WHERE pp.isreleased = 1
ORDER BY et.equipmentlevel
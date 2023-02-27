USE thingworxapps

SELECT
	eq.name as EquipamentName,
	pp.name as ProductionPathName,
	ri.isconstraintunit,
	ri.isscheduledpoint,
	ri.isproductionpoint,
	ri.iscountforwaste,
	ri.sequencenumber
	--ri.isproductionnotification
	--et.uid,
	--eq.equipmenttypeuid,
	--eq.uid,
	--pp.equipmentuid,
	--ri.equipmentuid
FROM equipmenttype et
INNER JOIN equipment eq on et.uid = eq.equipmenttypeuid
INNER JOIN productionpath pp on eq.uid = pp.equipmentuid
INNER JOIN routingitem ri on eq.uid = ri.equipmentuid
WHERE eq.enabled = 1
ORDER BY et.equipmentlevel
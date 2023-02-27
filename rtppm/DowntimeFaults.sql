USE thingworxapps

SELECT
	df.name as DowntimeFaultName,
	df.displayname as DisplayName,
	df.faultvalue as FaultValue,
	eq.name as EquipmentName,
	r.name as ReasonName,
	rh.reasonlevel as ReasonLevel,
	rt.name as ReasonTreeName
FROM downtimefault df
INNER JOIN equipment eq on eq.uid = df.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
INNER JOIN reasonhierarchy rh on rh.reasonuid = df.reasonhierarchyuid
INNER JOIN reason r on r.uid = rh.reasonuid
INNER JOIN reasontree rt on rt.uid = rh.reasontreeuid
WHERE eq.enabled = 1
ORDER BY et.equipmentlevel
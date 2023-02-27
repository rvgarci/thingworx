USE thingworxapps

SELECT
	wf.name as WasteFaultName,
	wf.displayname as WasteFaultDisplayName,
	wf.faultvalue as WasteFaultValue,
	eq.name as EquipmanetName,
	r.name as ReasonName,
	rh.reasonlevel as ReasonLevel,
	rt.name as ReasonTreeName
FROM wastefault wf
INNER JOIN equipment eq on eq.uid = wf.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
INNER JOIN reasonhierarchy rh on rh.reasonuid = wf.reasonhierarchyuid
INNER JOIN reason r on r.uid = rh.reasonuid
INNER JOIN reasontree rt on rt.uid = rh.reasontreeuid
WHERE eq.enabled = 1
ORDER BY et.equipmentlevel
USE thingworxapps

SELECT
	wf.name as WasteFaultName,
	wf.displayname as WasteFaultDisplayName,
	wf.faultvalue as WasteFaultValue,
	eq.name as EquipmanetName,
	r.name as ReasonName, r.uid,
	rh.reasonlevel as ReasonLevel,
	rt.name as ReasonTreeName
FROM wastefault wf
INNER JOIN equipment eq on eq.uid = wf.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
LEFT JOIN reasonhierarchy rh on rh.uid = wf.reasonhierarchyuid
LEFT JOIN reason r on r.uid = rh.reasonuid
LEFT JOIN reasontree rt on rt.uid = rh.reasontreeuid
WHERE eq.enabled = 1
ORDER BY et.equipmentlevel



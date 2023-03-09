USE thingworxapps

SELECT
	eq.name as EquipmentName,
	rt.name as ReasonTreeName
FROM reasontreelink rtl
INNER JOIN reasontree rt on rt.uid = rtl.reasontreeuid
INNER JOIN equipment eq on eq.uid = rtl.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
WHERE eq.enabled = 1
ORDER BY rt.name, et.equipmentlevel
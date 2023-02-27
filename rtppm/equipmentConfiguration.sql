USE thingworxapps

SELECT
	eq.name as EquipmentName,
	ec.name as ConfigurationName,
	ecl.value as ConfigurationValue,
	eq.uid,
	ecl.equipmentuid,
	ec.uid,
	ecl.equipmentconfigurationuid
	--et.equipmentlevel
FROM equipment eq
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
INNER JOIN equipmentconfigurationlink ecl on ecl.equipmentuid = eq.uid
INNER JOIN equipmentconfiguration ec on ec.uid = ecl.equipmentconfigurationuid
WHERE eq.enabled = 1
ORDER BY et.equipmentlevel
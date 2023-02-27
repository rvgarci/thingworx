USE thingworxapps

SELECT 
	eq.name as EquipamentName,
    eq.displayname as EquipmentDisplayName,
    eq.enabled as EquipamentEnabled,
	et.name as EquipamentType,
--	eq.parentequipmentuid,
--	eq.uid,
--	pe.uid,
	peaux.name as ParentEquipament,
	peaux.equipmentlevel as ParentLevel
FROM equipment eq
INNER JOIN equipmenttype et on eq.equipmenttypeuid = et.uid
INNER JOIN (SELECT
	pe.name,
	pe.uid,
	pet.equipmentlevel
FROM equipment pe
INNER JOIN equipmenttype pet on pet.uid = pe.equipmenttypeuid) peaux on peaux.uid = eq.parentequipmentuid
WHERE eq.enabled = 1
ORDER BY et.equipmentlevel
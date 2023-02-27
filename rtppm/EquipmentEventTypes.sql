USE thingworxapps

SELECT
	eq.name as EquipamentName,
	evt.name as EventTypeName,
	est.name as EventSubtypeName,
	--
	eq.uid,
	eel.equipmentuid,
	--
	est.uid,
	eel.eventsubtypeuid,
	--
	evt.uid,
	eel.eventtypeuid,
	--
	eel.uid
FROM equipmenteventtypelink eel
INNER JOIN equipment eq on eq.uid = eel.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
INNER JOIN eventsubtype est on est.uid = eel.eventsubtypeuid
INNER JOIN eventtype evt on evt.uid = eel.eventtypeuid
WHERE eq.enabled = 1
ORDER BY et.equipmentlevel
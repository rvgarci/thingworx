USE thingworxapps

SELECT
--att.*,
--et.equipmentlevel,
	att.name as AttributeName,
	att.displayname as AttributeDisplayName,
	att.enabled AttributeEnabled,
	uom.displayname as UnitOfMeasureName,
	eq.name as EquipamentName,
	df.name as DataFormatName,
	att.username as UserName,
	atts.name as AttributeSourceName
	/*
	dft.name,
	-
	att.unitofmeasureuid,
	uom.uid,
	--
	att.equipmentuid,
	eq.uid,
	--
	att.dataformatuid,
	dfl.dataformatuid,
	--
	dfl.dataformatuid,
	df.uid,
	--
	dfl.dataformattypeuid,
	dft.uid,
	--
	atts.uid,
	att.attributesourceuid
	*/
FROM attribute att
INNER JOIN unitofmeasure uom on uom.uid = att.unitofmeasureuid
INNER JOIN equipment eq on eq.uid = att.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
INNER JOIN dataformatlink dfl on dfl.dataformatuid = att.dataformatuid
INNER JOIN dataformat df on df.uid = dfl.dataformatuid
INNER JOIN dataformattype dft on dft.uid = dfl.dataformattypeuid
INNER JOIN attributesource atts on atts.uid = att.attributesourceuid
WHERE att.enabled = 1 and dft.name = 'Attribute'
ORDER BY et.equipmentlevel
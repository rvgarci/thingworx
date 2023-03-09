USE thingworxapps

SELECT
	cc.name as CharacteristicName,
	cc.displayname as CharacteristicDisplayName,
	cct.name as CharacteristicTypeName,
	df.name as DataFormatName,
	uom.name,
	cc.enabled
FROM controlcharacteristic cc
INNER JOIN controlcharacteristictypelink cctl on cctl.controlcharacteristicuid = cc.uid
INNER JOIN controlcharacteristictype cct on cct.uid = cctl.controlcharacteristictypeuid
INNER JOIN dataformat df on df.uid = cc.dataformatuid
INNER JOIN unitofmeasure uom on uom.uid = cc.unitofmeasureuid
ORDER BY cct.name, cc.name

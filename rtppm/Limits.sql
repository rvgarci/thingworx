USE thingworxapps

SELECT
	cc.name as CharacteristicName,
	uom.name as UnitOfMeasureName,
	eq.name as EquipmentName,
	ccl.lowentry as LowEntry,
	ccl.lowreject as LowReject,
	ccl.lowwarning as LowWarning,
	ccl.lowuser as LowUser,
	ccl.nominalvalue as NominalValue,
	ccl.highuser as HighUser,
	ccl.highwarning as HighWarning,
	ccl.highreject as HighReject,
	ccl.highentry as HighEntry,
	ccl.starttime as StartTime,
	ccl.endtime as EndTime
FROM controlcharacteristic cc
INNER JOIN unitofmeasure uom on uom.uid = cc.unitofmeasureuid
INNER JOIN controlcharacteristiclink ccl on ccl.controlcharacteristicuid = cc.uid
INNER JOIN equipment eq on eq.uid = ccl.equipmentuid

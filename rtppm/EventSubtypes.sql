USE thingworxapps

SELECT
	est.name,
	est.displayname,
	uom.name,
	est.uid,
	est.unitofmeasureuid,
	uom.uid
	
FROM eventsubtype est
INNER JOIN unitofmeasure uom on uom.uid = est.unitofmeasureuid
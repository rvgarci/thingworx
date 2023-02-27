USE thingworxapps

SELECT
	a.name as AttributeName,
	at.name as AttributeTypeName,
	eq.name
	--dft.name

FROM attributetypelink al
INNER JOIN attribute a on a.uid = al.attributeuid
INNER JOIN attributetype at on at.uid = al.attributetypeuid
INNER JOIN equipment eq on eq.uid = a.equipmentuid
INNER JOIN equipmenttype et on et.uid = eq.equipmenttypeuid
INNER JOIN dataformatlink dfl on dfl.dataformatuid = a.dataformatuid
INNER JOIN dataformattype dft on dft.uid = dfl.dataformattypeuid

WHERE eq.enabled = 1 and a.enabled = 1 and dft.name = 'Attribute'
ORDER BY et.equipmentlevel
;


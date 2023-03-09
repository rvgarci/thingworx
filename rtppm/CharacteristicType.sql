USE thingworxapps

SELECT
	cct.name as CharacteristicTypeName,
	cct.displayname as CharacteristicTypeDisplayName
FROM controlcharacteristictype cct
ORDER BY cct.name
USE thingworxapps

SELECT
	rt.name as ReasonTreeName,
	(CONCAT('Token.ReasonTree.',rt.name)) as TokenReasonTree,
	rt.enabled as Enabled,
	et.name as EventTypeName,
	(CONCAT('Token.ReasonTree.',rt.name)) as TokenReasonTree,
	rt.displayname as ReasonTreeDisplayName
FROM reasontree rt
INNER JOIN eventtype et on et.uid = rt.eventtypeuid

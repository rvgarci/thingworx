SELECT
	cd.name as CrewName,
	sd.name as ShifName,
	eq.name as EquipmentName,
	se.starttime,
	se.endtime
FROM shiftevent se
INNER JOIN crewdetail cd on cd.uid = se.crewdetailuid
INNER JOIN shiftdetail sd on sd.uid = se.shiftdetailuid
INNER JOIN equipment eq on eq.uid = se.equipmentuid
WHERE eq.enabled = 1
ORDER BY se.starttime asc
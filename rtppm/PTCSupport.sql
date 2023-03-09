----------------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT ps.uid 'StatusUid', ps.name 'StatusName',
t.uid 'TypeUid', t.name 'TypeName',
l.uid 'LinkUid'
FROM productionstatus ps
CROSS JOIN productionstatustype t
LEFT JOIN productionstatuslink l ON l.productionstatustypeuid = t.uid AND l.productionstatusuid = ps.uid
ORDER BY StatusName ASC, TypeName ASC;

select * from productionevent;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from attribute;

select * from eventsubtype;

select * from unitofmeasure;

update attribute set unitofmeasureuid = 30
where uid = 1;

update attribute set unitofmeasureuid = 27
where uid = 2;

update attribute set unitofmeasureuid = 29
where uid = 3;

update attribute set unitofmeasureuid = 3
where uid = 4;

update attribute set unitofmeasureuid = 3
where uid = 5;

update attribute set unitofmeasureuid = 23
where uid = 6;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------

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


----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from errorlogmessage order by uid desc;

select * from timeslice
where timeslicetypeuid = 2
order by starttime desc;

select * from shiftevent;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO transactionproduction (action, productioneventuid, retrycount, timestamp, transactionstatusuid) SELECT 'INSERT', uid, 0, GETDATE(), 0 FROM productionevent;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from wastefault;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

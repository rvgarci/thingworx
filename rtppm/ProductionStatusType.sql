USE thingworxapps

SELECT
	ps.name,
	pst.name,
	--
	ps.uid,
	psl.productionstatusuid,
	--
	pst.uid,
	psl.productionstatustypeuid,
	--
	psl.uid
FROM productionstatus ps
INNER JOIN productionstatuslink psl on ps.uid = psl.productionstatusuid
INNER JOIN productionstatustype pst on pst.uid = psl.productionstatustypeuid
;
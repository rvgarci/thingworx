USE thingworxapps

USE thingworxapps

SELECT
	rt.name as ReasonTreeName,
	rc.name as ReasonCategoryName,
	r.name as ReasonName,
	--aux.name as ParentReasonName,
	rh.reasonlevel
	--rh.reasonhierarchyparentuid,
	--rh.reasonhierarchiesuid,
	--rh.uid
FROM reasonhierarchy rh
INNER JOIN reasontree rt on rt.uid = rh.reasontreeuid
INNER JOIN reason r on r.uid = rh.reasonuid
LEFT JOIN (SELECT r.name, rh.uid FROM reasonhierarchy rh INNER JOIN reason r on r.uid = rh.reasonuid) aux on aux.uid = rh.reasonhierarchyparentuid
LEFT JOIN reasoncategorylink rcl on rcl.reasonhierarchyuid = rh.uid
LEFT JOIN reasoncategory rc on rc.uid = rcl.reasoncategoryuid
ORDER BY rt.name, rh.reasonhierarchiesuid;


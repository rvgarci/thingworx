USE thingworxapps
	
SELECT
	rc.name as ReasonCategoryName,
	t.name,
	--rc.name as ReasonCategoryDisplayName,
	rct.name as ReasonCategoryTypeName
	--l.name
FROM reasoncategory rc
INNER JOIN reasoncategorytype rct on rct.uid = rc.reasoncategorytypeuid
INNER JOIN token t on t.uid = rc.tokenuid
--INNER JOIN tokenlanguagelink tll on tll.tokenuid = t.uid
--INNER JOIN language l on l.uid = tll.languageuid
ORDER BY rc.name
USE thingworxapps
	
SELECT
	rc.name as ReasonCategoryName,
	rc.displayname as ReasonCategoryDisplayName,
	rct.name as ReasonCategoryTypeName
FROM reasoncategory rc
INNER JOIN reasoncategorytype rct on rct.uid = rc.reasoncategorytypeuid
ORDER BY rc.name
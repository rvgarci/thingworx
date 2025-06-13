USE thingworxapps
	
select e.name, p.name, p.displayname from productequipmentlink pel
inner join product p on p.uid = pel.productuid
inner join equipment e on e.uid = pel.equipmentuid
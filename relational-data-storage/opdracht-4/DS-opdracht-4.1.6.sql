SELECT s.name AS leveranciersnaam,
       c.name AS plaatsnaam, 
       co.name AS gemeentenaam, 
       d.name AS provincienaam, 
       h.hitcount
FROM mhl_suppliers s
JOIN mhl_hitcount h 
    ON h.supplier_ID = s.id
JOIN mhl_cities c 
    ON s.city_ID=c.id
JOIN mhl_communes co 
    ON c.commune_ID=co.id
JOIN mhl_districts d 
    ON co.district_ID=d.id
WHERE h.month =1 AND h.year =2014 
AND d.name IN ('Noord-Brabant','Limburg','Zeeland');

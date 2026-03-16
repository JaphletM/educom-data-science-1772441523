SELECT s.name, s.straat, s.huisnr, s.postcode 
FROM mhl_suppliers s 
LEFT JOIN mhl_cities c 
ON s.city_ID= c.id 
where c.name = 'Amsterdam';

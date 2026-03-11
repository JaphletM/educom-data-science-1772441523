SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s 
JOIN mhl_cities c 
ON s.city_ID=c.id
JOIN mhl_districts d 
ON c.district_ID=d.id 
WHERE d.name='Steenwijkerland';

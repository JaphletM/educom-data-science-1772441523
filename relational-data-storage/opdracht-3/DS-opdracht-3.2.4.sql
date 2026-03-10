SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s
JOIN mhl_cities c1 ON s.city_ID = c1.id
JOIN mhl_cities c2 ON s.p_city_ID = c2.id
WHERE c1.name = 'Amsterdam'
OR c2.name ='Den Haag';
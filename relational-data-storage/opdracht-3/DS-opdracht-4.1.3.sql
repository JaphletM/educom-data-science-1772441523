SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s
JOIN mhl_suppliers_mhl_rubriek_view m
    ON m.mhl_supplies_ID = s.id
JOIN mhl_rubrieken r
    ON m.rubriek_view_ID = r.id
JOIN mhl_cities c
    ON s.city_ID = c.id
WHERE c.name = 'Amsterdam'
AND r.name LIKE '%drank%'
ORDER BY r.name,s.name;
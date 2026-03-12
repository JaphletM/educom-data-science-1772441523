SELECT s.name, s.straat, s.huisnr, s.postcode
FROM mhl_suppliers s
JOIN mhl_yn_properties m
    ON m.supplier_ID = s.id
JOIN mhl_propertytypes p
    ON m.propertytype_ID = p.id
WHERE p.name IN ('specialistische leverancier','ook voor particulieren');
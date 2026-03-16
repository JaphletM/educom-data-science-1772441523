CREATE VIEW verzendlijst AS 
SELECT s.id,
IF(s.p_address <> '', s.p_address, CONCAT(s.straat, ' ', s.huisnr) )AS adres,
IF(s.p_address <> '', s.p_postcode, s.postcode) AS postcode,
IF(s.p_address <> '', pc.name, c.name) AS stad
FROM mhl_suppliers s
JOIN mhl_cities c ON s.city_ID = c.id
LEFT JOIN mhl_cities pc ON s.p_city_ID = pc.id;

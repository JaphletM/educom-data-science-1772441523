SELECT s.name, s.straat, s.huisnr, s.postcode, g.lat, g.lng
FROM mhl_suppliers s
JOIN pc_lat_long g 
ON s.postcode=g.pc6
WHERE g.lat > 0 AND g.lat<=90
ORDER BY g.lat DESC
LIMIT 5;

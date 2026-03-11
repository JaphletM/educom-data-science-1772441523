SELECT s.*
FROM mhl_suppliers s
JOIN mhl_membertypes m ON s.membertype = m.id
JOIN mhl_cities c ON s.city = c.id
ORDER BY m.name, c.name, s.postcode;
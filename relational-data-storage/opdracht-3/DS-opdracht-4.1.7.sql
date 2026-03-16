SELECT c1.name, c1.id, c1.gemeente_id
FROM mhl_cities c1
JOIN mhl_cities c2
ON c1.name = c2.name
AND c1.id <> c2.id
ORDER BY c1.name;
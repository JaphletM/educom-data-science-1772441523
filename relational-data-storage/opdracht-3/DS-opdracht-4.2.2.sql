SELECT c.name AS place_name,
       IFNULL(g.name, 'INVALID') AS commune_name
FROM mhl_cities c
LEFT JOIN mhl_communes g
ON c.commune_ID = g.id;
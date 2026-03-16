SELECT c.name, c.commune_ID
FROM mhl_cities_shadow c
LEFT JOIN mhl_communes g 
    ON c.commune_ID = g.id
WHERE g.id IS NULL;
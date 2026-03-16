SELECT c1.name, c1.id AS cid1, c2.id AS cid2, g1.id AS gid1, g2.id AS g2id, g1.name AS gemeente_1, g2.name AS gemeente_2
FROM mhl_cities c1 
JOIN mhl_cities c2 ON c1.name=c2.name 
JOIN mhl_communes g1 ON g1.id=c1.commune_ID
JOIN mhl_communes g2 ON g2.id=c2.commune_ID
WHERE c1.id<c2.id
ORDER BY c1.name;
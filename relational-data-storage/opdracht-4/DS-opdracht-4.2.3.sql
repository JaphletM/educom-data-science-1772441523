SELECT 
    h.name AS hoofdrubriek,
    s.name AS subrubriek
FROM mhl_rubrieken h
LEFT JOIN mhl_rubrieken s
ON s.parent = h.id
WHERE h.parent IS NULL
ORDER BY h.name, s.name;
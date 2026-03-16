SELECT 
    h.year,
    h.month,
    COUNT(DISTINCT h.supplier_ID) AS aantal_leveranciers,
    SUM(h.hitcount) AS totale_hitcount
FROM mhl_hitcount h
GROUP BY h.year, h.month
ORDER BY h.year, h.month;
SELECT min(hitcount),
max(hitcount),
avg(hitcount),
sum(hitcount)
FROM mhl_hitcount
GROUP BY year,
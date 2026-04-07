-- View with derived population metrics
CREATE VIEW view_population_metrics AS
SELECT
    c.id,
    c.country,
    c.continent,
    e.year,
    e.population,
    c.area_km2,

    ROUND(e.population / c.area_km2, 4) AS population_density,

    prev.population AS previous_population,

    CASE
        WHEN prev.population IS NULL THEN NULL
        ELSE ROUND((e.population - prev.population) / prev.population, 4)
    END AS population_growth_rate,

    ROUND((e.population / yearly.total_population) * 100, 4) AS percentage_world_population

FROM country c
JOIN entity e
    ON c.id = e.country_id

LEFT JOIN entity prev
    ON e.country_id = prev.country_id
    AND prev.year = (
        SELECT MAX(e2.year)
        FROM entity e2
        WHERE e2.country_id = e.country_id
          AND e2.year < e.year
    )

JOIN (
    SELECT year, SUM(population) AS total_population
    FROM entity
    GROUP BY year
) yearly
    ON e.year = yearly.year;
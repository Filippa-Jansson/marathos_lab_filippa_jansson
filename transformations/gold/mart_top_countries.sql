CREATE MATERIALIZED VIEW marathos.gold.mart_top_countries AS
SELECT
    athlete_country,
    COUNT(*) AS total_athletes
FROM marathos.gold.dim_athlete
WHERE athlete_country IS NOT NULL
GROUP BY athlete_country
ORDER BY total_athletes DESC
LIMIT 10;
CREATE OR REPLACE MATERIALIZED VIEW marathos.gold.dim_athlete AS
SELECT DISTINCT
  athlete_id,
  athlete_country,
  athlete_year_of_birth,
  athlete_gender,
  athlete_age_category,
  athlete_club
FROM marathos.silver.marathos_obt;
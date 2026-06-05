CREATE OR REPLACE MATERIALIZED VIEW marathos.gold.dim_event AS
SELECT DISTINCT
  event_id,
  event_name,
  event_type,
  event_distance_length,
  event_number_of_finishers,
  event_date,
  event_year
FROM marathos.silver.marathos_obt;
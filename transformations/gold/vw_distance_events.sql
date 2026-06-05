CREATE MATERIALIZED VIEW marathos.gold.vw_distance_events AS
SELECT *
FROM marathos.gold.dim_event
WHERE event_type = 'distance';
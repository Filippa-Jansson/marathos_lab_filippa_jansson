CREATE MATERIALIZED VIEW marathos.gold.vw_time_events AS
SELECT *
FROM marathos.gold.dim_event
WHERE event_type = 'time';
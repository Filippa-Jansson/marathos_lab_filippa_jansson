CREATE MATERIALIZED VIEW marathos.gold.mart_event_summary AS

SELECT
    e.event_type,
    COUNT(DISTINCT e.event_id) AS total_events,
    COUNT(f.result_id) AS total_results,
    ROUND(AVG(e.event_number_of_finishers), 0) AS avg_finishers

FROM marathos.gold.fct_results f

LEFT JOIN marathos.gold.dim_event e
ON f.event_id = e.event_id
WHERE e.event_type IN ('distance', 'time')
GROUP BY e.event_type;
-- EstadoClaro gold cutoff: 2026-10-02T15:43:07+00:00; read-only execution 2026-10-03.
WITH recent AS (
 SELECT source_id, declaration_date, global_liability_amount_clp
 FROM declaration WHERE source_id IN ('5097862','5114130')
)
SELECT source_id, declaration_date, global_liability_amount_clp,
       round(global_liability_amount_clp / lag(global_liability_amount_clp)
             OVER (ORDER BY declaration_date), 2) AS ratio_to_prior_snapshot
FROM recent
ORDER BY declaration_date;

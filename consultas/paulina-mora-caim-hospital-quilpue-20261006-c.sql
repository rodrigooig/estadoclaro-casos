-- Execution against read-only gold.duckdb; cutoff 2026-10-06T15:56:08+00:00.
-- Company's declaration-window procurement breakdown by buyer, unique order code.
SELECT buyer_name,
       COUNT(DISTINCT order_code) FILTER (WHERE timing = 'during') AS n_orders_during,
       SUM(amount_clp) FILTER (WHERE timing = 'during') AS amount_rows_during,
       COUNT(DISTINCT order_code) FILTER (WHERE same_institution = TRUE) AS n_same_institution_true,
       COUNT(DISTINCT order_code) FILTER (WHERE same_institution IS NULL) AS n_same_institution_unknown
FROM declared_supply_order
WHERE supplier_rut = '77316808'
GROUP BY buyer_name
ORDER BY n_orders_during DESC, buyer_name;
-- Execution against read-only gold.duckdb; cutoff 2026-10-06T15:56:08+00:00.
-- Filter to the company's declaration-window rows before summing so overlapping
-- after_1y labels cannot double-count an order.
WITH distinct_during AS (
    SELECT order_code, MAX(sent_date) AS sent_date, MAX(amount_clp) AS amount_clp,
           MAX(buyer_name) AS buyer_name
    FROM declared_supply_order
    WHERE supplier_rut = '77316808' AND timing = 'during'
    GROUP BY order_code
)
SELECT COUNT(*) AS n_unique_orders,
       SUM(amount_clp) AS amount_clp_distinct,
       MIN(sent_date) AS first_order,
       MAX(sent_date) AS last_order,
       COUNT(DISTINCT buyer_name) AS buyers
FROM distinct_during;
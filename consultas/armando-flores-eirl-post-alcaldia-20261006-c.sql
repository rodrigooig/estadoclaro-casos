-- Execution against read-only gold.duckdb; cutoff 2026-10-06T15:56:08+00:00.
-- Distinguish timing labels per declaration; keep each primary code once per snapshot.
WITH unique_orders AS (
    SELECT order_code, sent_date, MAX(amount_clp) AS amount_clp,
           MAX(buyer_name) AS buyer_name
    FROM declared_supply_order
    WHERE supplier_rut = '76334863'
    GROUP BY order_code, sent_date
), snapshot_order AS (
    SELECT DISTINCT declaration_id, timing, order_code
    FROM declared_supply_order
    WHERE supplier_rut = '76334863'
)
SELECT x.declaration_date, x.position, x.institution, so.timing,
       COUNT(*) AS n_unique_orders,
       SUM(u.amount_clp) AS amount_clp_unique,
       COUNT(DISTINCT u.buyer_name) AS n_buyers,
       MIN(u.sent_date) AS first_order,
       MAX(u.sent_date) AS last_order
FROM snapshot_order so
JOIN declaration x ON x.declaration_id = so.declaration_id
JOIN declarant d ON d.person_id = x.person_id
JOIN unique_orders u ON u.order_code = so.order_code
WHERE d.full_name = 'ARMANDO PABLO FLORES JIMENEZ'
GROUP BY x.declaration_date, x.position, x.institution, so.timing
ORDER BY x.declaration_date, so.timing;

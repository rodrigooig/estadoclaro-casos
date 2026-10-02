-- Independent adversarial check; deduplicate on order_code and compare the sum with
-- purchase_order rather than reusing the original company/declaration join.
-- Read-only against gold.duckdb; artifact cutoff: 2026-10-02T15:43:07+00:00.
WITH orders AS (
    SELECT DISTINCT order_code, amount_clp
    FROM declared_supply_order
    WHERE person_id = (
        SELECT person_id FROM person
        WHERE full_name = 'PABLO ENRIQUE GARCÍA GONZÁLEZ'
    )
      AND supplier_rut = '76121832'
      AND timing = 'during'
      AND is_primary_for_person IS TRUE
)
SELECT
    COUNT(*) AS distinct_order_codes,
    SUM(orders.amount_clp) AS declared_supply_sum_clp,
    COUNT(DISTINCT po.order_code) AS purchase_order_codes,
    SUM(po.amount_clp) AS purchase_order_sum_clp
FROM orders
JOIN purchase_order po USING (order_code);

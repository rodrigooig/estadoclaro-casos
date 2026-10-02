-- Check that the two cited contract examples are the two largest primary orders.
-- Read-only against gold.duckdb; artifact cutoff: 2026-10-02T15:43:07+00:00.
SELECT
    o.order_code,
    o.sent_date,
    o.buyer_name,
    o.route,
    o.amount_clp AS artifact_amount_clp,
    po.currency,
    po.declared_amount AS original_declared_amount,
    po.supplier_name,
    po.supplier_rut
FROM declared_supply_order o
JOIN purchase_order po USING (order_code)
WHERE o.person_id = (
    SELECT person_id FROM person
    WHERE full_name = 'PABLO ENRIQUE GARCÍA GONZÁLEZ'
)
  AND o.supplier_rut = '76121832'
  AND o.timing = 'during'
  AND o.is_primary_for_person IS TRUE
ORDER BY po.amount_clp DESC, o.order_code
LIMIT 5;

-- Primary-source follow-up: inspect the three direct-award order records.
-- Read-only against gold.duckdb; artifact cutoff: 2026-10-02T15:43:07+00:00.
SELECT
    o.order_code,
    o.sent_date,
    o.status,
    o.route,
    o.amount_clp AS artifact_amount_clp,
    po.currency,
    po.declared_amount AS original_declared_amount,
    po.supplier_name,
    po.supplier_rut,
    o.url
FROM declared_supply_order o
JOIN purchase_order po USING (order_code)
WHERE o.person_id = (
    SELECT person_id FROM person
    WHERE full_name = 'PABLO ENRIQUE GARCÍA GONZÁLEZ'
)
  AND o.supplier_rut = '76121832'
  AND o.timing = 'during'
  AND o.is_primary_for_person IS TRUE
  AND o.order_code IN ('662237-108-SE22', '654478-517-SE22', '654478-40-SE23')
ORDER BY o.sent_date, o.order_code;

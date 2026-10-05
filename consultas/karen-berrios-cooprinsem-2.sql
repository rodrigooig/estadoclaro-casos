SELECT
    timing,
    COUNT(DISTINCT order_code) AS unique_codes,
    SUM(amount_clp) AS sum_clp,
    COUNT(DISTINCT buyer_key) AS buyers,
    MIN(sent_date) AS first_order,
    MAX(sent_date) AS last_order,
    COUNT(*) AS source_rows
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id
    FROM person
    WHERE full_name = 'KAREN ALEJANDRA BERRIOS GUERRA'
)
  AND supplier_rut = '82392600'
  AND is_primary_for_person
GROUP BY timing
ORDER BY timing;

-- Independent cross-check of the same RUT and date window in the canonical
-- procurement table; these are unique purchase-order records, not declaration rows.
SELECT
    COUNT(DISTINCT order_code) AS unique_codes,
    SUM(amount_clp) AS sum_clp,
    COUNT(DISTINCT buyer_key) AS buyers,
    MIN(sent_date) AS first_order,
    MAX(sent_date) AS last_order
FROM purchase_order
WHERE supplier_rut = '82392600'
  AND sent_date BETWEEN DATE '2025-08-19' AND DATE '2026-10-01';

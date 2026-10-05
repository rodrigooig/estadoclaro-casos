SELECT
    buyer_key,
    buyer_name,
    COUNT(DISTINCT order_code) AS unique_orders,
    SUM(amount_clp) AS amount_clp,
    MIN(sent_date) AS first_order,
    MAX(sent_date) AS last_order,
    COUNT(DISTINCT tender_code) AS tenders
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id
    FROM person
    WHERE full_name = 'KAREN ALEJANDRA BERRIOS GUERRA'
)
  AND supplier_rut = '82392600'
  AND is_primary_for_person
GROUP BY buyer_key, buyer_name
ORDER BY amount_clp DESC;

-- Sample of primary order records to retrieve their official Mercado Público pages.
SELECT order_code, sent_date, buyer_name, amount_clp, main_rubro, route, tender_code, url
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id
    FROM person
    WHERE full_name = 'KAREN ALEJANDRA BERRIOS GUERRA'
)
  AND supplier_rut = '82392600'
  AND is_primary_for_person
ORDER BY amount_clp DESC, sent_date DESC
LIMIT 12;

-- Buyer concentration by normalized institutional key for the exact declarant/supplier pair.
-- This is a descriptive cross-check, not proof of the declarant's role in any purchase.
-- Gold cutoff 2026-10-02T15:43:07Z.
SELECT buyer_key, buyer_name,
       COUNT(DISTINCT order_code) AS distinct_order_codes,
       ROUND(SUM(amount_clp)) AS nominal_amount_clp,
       COUNT(DISTINCT CASE WHEN is_direct_award THEN order_code END) AS direct_award_codes,
       COUNT(DISTINCT CASE WHEN is_agile THEN order_code END) AS agile_codes,
       MIN(sent_date) AS first_order_date,
       MAX(sent_date) AS last_order_date
FROM declared_supply_order
WHERE person_id = 'c61665eb759a8538f1efd3bdbccb5a07'
  AND supplier_rut = '76226856'
  AND is_primary_for_person
  AND timing = 'during'
GROUP BY buyer_key, buyer_name
ORDER BY distinct_order_codes DESC, nominal_amount_clp DESC;

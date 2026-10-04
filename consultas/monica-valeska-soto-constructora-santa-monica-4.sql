-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
-- Linkage countercheck for the pre-transfer primary records; NULL remains unknown.
SELECT
  COUNT(DISTINCT order_code) AS unique_orders,
  COUNT(DISTINCT order_code) FILTER (WHERE same_institution IS TRUE) AS same_institution_true,
  COUNT(DISTINCT order_code) FILTER (WHERE same_institution IS NULL) AS same_institution_unknown,
  COUNT(DISTINCT order_code) FILTER (WHERE same_institution IS FALSE) AS same_institution_false,
  COUNT(DISTINCT order_code) FILTER (WHERE UPPER(buyer_name) LIKE '%PODER JUDICIAL%') AS named_pjud_buyers
FROM declared_supply_order
WHERE person_id = '1487361bf789e28715ca1be5cb51a145'
  AND supplier_rut = '76007279'
  AND is_primary_for_person
  AND timing = 'during'
  AND sent_date < DATE '2023-09-06';

-- Falsification check: count buyers in the declared employer and preserve
-- NULL as unknown (not false). Gold cutoff 2026-10-02T15:43:07+00:00.
SELECT COUNT(DISTINCT order_code) AS n_orders,
       COUNT(DISTINCT order_code) FILTER (WHERE same_institution IS TRUE) AS same_institution_true,
       COUNT(DISTINCT order_code) FILTER (WHERE same_institution IS NULL) AS same_institution_unknown,
       COUNT(DISTINCT order_code) FILTER (WHERE same_institution IS FALSE) AS same_institution_false,
       COUNT(DISTINCT order_code) FILTER (WHERE UPPER(buyer_name) LIKE '%PODER JUDICIAL%') AS pjud_buyer_orders
FROM declared_supply_order
WHERE person_id = 'efa302c4236dadf4b31b0aae00fa2533'
  AND supplier_rut = '76958669'
  AND is_primary_for_person
  AND timing = 'during';

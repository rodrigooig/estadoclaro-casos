WITH orders AS (
  SELECT DISTINCT
    order_code,
    amount_clp,
    route,
    is_direct_award,
    same_institution,
    supplier_rut,
    buyer_name,
    sent_date
  FROM declared_supply_order
  JOIN person USING (person_id)
  WHERE full_name = 'NORA ANGELA ROSATI JEREZ'
    AND is_primary_for_person
    AND timing = 'during'
    AND exclusion_reason IS NULL
)
SELECT
  COUNT(*) AS unique_orders,
  ROUND(SUM(amount_clp)) AS sum_clp,
  COUNT(*) FILTER (WHERE is_direct_award) AS direct_award_count,
  COUNT(*) FILTER (WHERE route = 'Proveniente de licitación pública') AS public_tender_count,
  COUNT(*) FILTER (WHERE same_institution IS TRUE) AS same_institution_true,
  COUNT(*) FILTER (WHERE same_institution IS NULL) AS same_institution_null,
  MIN(sent_date) AS first_order_date,
  MAX(sent_date) AS last_order_date
FROM orders;

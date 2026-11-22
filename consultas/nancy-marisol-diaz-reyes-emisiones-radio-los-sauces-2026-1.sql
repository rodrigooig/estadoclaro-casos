-- Semilla y verificación del cruce; todas las cifras contra el gold del corte indicado.
SELECT DISTINCT
  p.full_name,
  d.source_id,
  d.declaration_date,
  d.declaration_type,
  d.institution,
  d.position,
  d.start_date,
  c.legal_name,
  c.company_rut,
  c.type,
  c.quantity,
  c.is_controlling,
  c.value_clp,
  c.business_activity,
  o.order_code,
  o.sent_date,
  o.status,
  o.route,
  o.tender_code,
  o.amount_clp,
  o.amount_uf,
  o.same_institution,
  o.timing
FROM declared_supply_order o
JOIN person p USING (person_id)
JOIN declaration d USING (declaration_id)
JOIN company c USING (declaration_id, asset_id)
WHERE o.supplier_rut = '76490266'
  AND o.same_institution = TRUE
  AND o.timing = 'during'
  AND o.exclusion_reason IS NULL
ORDER BY o.sent_date;

-- Resumen sin duplicar OCs por la forma del puente.
SELECT COUNT(DISTINCT order_code) AS n_orders,
       SUM(amount_clp) AS amount_clp,
       SUM(amount_uf) AS amount_uf,
       MIN(sent_date) AS first_date,
       MAX(sent_date) AS last_date,
       COUNT(DISTINCT tender_code) AS n_tenders
FROM declared_supply_order
WHERE supplier_rut = '76490266'
  AND same_institution = TRUE
  AND timing = 'during'
  AND exclusion_reason IS NULL;
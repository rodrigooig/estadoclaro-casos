-- Semilla y órdenes de Boris Gastón Oportus Ortiz / Servicios Médicos e Inversiones Dr. Oportus Ltda.
-- Ejecutar solo con ec-gold-sql (gold de solo lectura).
SELECT
  d.person_id,
  d.declaration_id,
  d.source_id,
  d.declaration_date,
  d.start_date,
  d.institution,
  d.position,
  c.legal_name,
  c.company_rut,
  c.type AS participation_type,
  c.quantity,
  c.is_controlling,
  ds.n_declarants,
  ds.n_orders_during,
  ds.n_same_institution,
  ds.amount_clp_during,
  ds.amount_uf_during
FROM declaration d
JOIN company c USING (declaration_id)
JOIN declared_supply ds
  ON ds.person_id = d.person_id
 AND ds.supplier_rut = CAST(c.company_rut AS BIGINT)
WHERE d.person_id = '340de00eb9560de9f9ddd55490c9675e'
  AND d.declaration_id = 'declaracion_40ace1babb133e1ea17f09932dd2e508';

SELECT
  order_code,
  url,
  sent_date,
  status,
  route,
  tender_code,
  buyer_name,
  amount_clp,
  amount_uf,
  timing,
  same_institution
FROM declared_supply_order
WHERE person_id = '340de00eb9560de9f9ddd55490c9675e'
  AND supplier_rut = 77987610
  AND timing = 'during'
ORDER BY sent_date, order_code;

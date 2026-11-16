SELECT
  p.full_name,
  o.status AS office_status,
  o.ended_on,
  o.assumed_on,
  o.position_label,
  o.institution AS office_institution,
  o.source_uri AS office_source,
  d.declaration_date,
  d.end_date,
  d.source_id,
  d.institution AS declaration_institution,
  d.position,
  c.legal_name,
  c.company_rut,
  c.type,
  c.quantity,
  c.is_controlling,
  ds.order_code,
  ds.sent_date,
  ds.status AS order_status,
  ds.route,
  ds.is_direct_award,
  ds.buyer_name,
  ds.amount_clp,
  ds.amount_uf,
  ds.timing,
  ds.same_institution
FROM person p
JOIN office o ON o.person_id = p.person_id
JOIN declaration d ON d.person_id = p.person_id
JOIN company c ON c.declaration_id = d.declaration_id
JOIN declared_supply_order ds
  ON ds.person_id = p.person_id
 AND ds.declaration_id = d.declaration_id
 AND ds.supplier_rut = c.company_rut
WHERE p.full_name = 'JOSÉ GABRIEL ALEMPARTE MERY'
  AND ds.order_code = '643553-498-TD26'
ORDER BY d.declaration_date DESC;

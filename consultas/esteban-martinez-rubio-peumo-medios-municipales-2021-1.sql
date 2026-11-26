SELECT
  d.source_id,
  d.declaration_date,
  d.position,
  d.institution,
  d.start_date,
  c.legal_name,
  c.company_rut,
  c.type,
  c.quantity,
  c.is_controlling,
  o.order_code,
  o.sent_date,
  o.status,
  o.route,
  o.amount_clp,
  o.amount_uf,
  o.buyer_name,
  o.timing,
  o.same_institution,
  o.url
FROM declared_supply_order o
JOIN declaration d ON o.declaration_id = d.declaration_id
JOIN person p ON o.person_id = p.person_id
JOIN company c ON c.declaration_id = d.declaration_id
  AND c.company_rut = o.supplier_rut
WHERE p.full_name = 'ESTEBAN GREGORIO MARTÍNEZ RUBIO'
  AND o.supplier_rut = '76176473'
  AND o.buyer_name ILIKE '%PEUMO%'
ORDER BY o.sent_date, o.order_code
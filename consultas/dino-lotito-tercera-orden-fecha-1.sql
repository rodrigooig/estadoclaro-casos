SELECT
  p.full_name,
  d.declaration_id,
  d.declaration_date,
  d.institution,
  d.position,
  c.legal_name,
  c.company_rut,
  c.type AS participation_type,
  c.is_controlling,
  c.acquisition_date,
  c.business_activity,
  o.order_code,
  o.sent_date,
  o.status,
  o.route,
  o.is_direct_award,
  o.buyer_name,
  o.amount_clp,
  o.amount_uf,
  o.same_institution,
  o.url
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply_order o
  ON o.person_id = p.person_id
 AND o.declaration_id = d.declaration_id
 AND o.supplier_rut = c.company_rut
WHERE p.full_name = 'DINO LOTITO FLORES'
  AND c.company_rut = '76219659'
  AND o.is_primary_for_person IS TRUE
ORDER BY o.sent_date, d.declaration_date;

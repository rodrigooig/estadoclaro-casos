SELECT DISTINCT
  p.full_name,
  d.institution,
  d.position,
  s.legal_name,
  s.supplier_rut,
  o.order_code,
  o.sent_date,
  o.buyer_name,
  o.amount_clp,
  o.route,
  o.tender_code,
  o.is_direct_award,
  o.same_institution
FROM declared_supply_order o
JOIN person p USING (person_id)
JOIN declaration d ON d.declaration_id = o.declaration_id
JOIN declared_supply s
  ON s.person_id = o.person_id
 AND s.supplier_rut = o.supplier_rut
WHERE p.full_name = 'NORA ANGELA ROSATI JEREZ'
  AND o.is_primary_for_person
  AND o.timing = 'during'
  AND o.exclusion_reason IS NULL
ORDER BY o.sent_date, o.order_code;

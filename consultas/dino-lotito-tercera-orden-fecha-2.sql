SELECT DISTINCT
  p.full_name,
  o.order_code,
  o.sent_date,
  o.status,
  o.buyer_name,
  o.same_institution,
  o.amount_clp,
  o.url
FROM declared_supply_order o
JOIN person p USING (person_id)
WHERE p.full_name = 'DINO LOTITO FLORES'
  AND o.supplier_rut = '76219659'
  AND o.is_primary_for_person IS TRUE
ORDER BY o.sent_date, o.order_code;

SELECT
  d.person_id, p.full_name, d.declaration_id, d.declaration_date,
  d.institution, d.position, c.legal_name, c.company_rut, c.type,
  c.is_controlling, c.quantity, c.acquisition_date
FROM declaration d
JOIN declarant p USING (person_id)
JOIN company c USING (declaration_id)
WHERE d.person_id = '5ca697843c5a68505dab57e12771b181'
  AND d.declaration_id = 'declaracion_2b66a9f21cb88e4208ffe8ac80a24665'
  AND c.company_rut = '76944994';

SELECT
  order_code, sent_date, status, route, supplier_rut, supplier_dv,
  supplier_name, buyer_name, amount_clp, amount_uf, main_rubro,
  same_institution, timing
FROM declared_supply_order
WHERE person_id = '5ca697843c5a68505dab57e12771b181'
  AND supplier_rut = '76944994';

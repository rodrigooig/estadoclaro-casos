SELECT p.full_name, s.person_id, s.supplier_rut, s.legal_name, s.n_declarants,
       s.participation_type, s.is_controlling, s.name_similarity, s.n_orders_during,
       s.n_same_institution, s.n_direct_award, s.amount_clp_during,
       s.first_order_date, s.last_order_date
FROM declared_supply s
JOIN person p USING (person_id)
WHERE s.person_id = 'c66ddef2af71029aaef4e3c0d0a1f8f5'
  AND s.supplier_rut = '76078271';

SELECT p.full_name, d.declaration_id, d.declaration_date, d.declaration_type,
       d.institution, d.position, d.source_id, c.company_rut, c.legal_name,
       c.type, c.is_controlling
FROM declared_supply s
JOIN person p USING (person_id)
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
WHERE s.person_id = 'c66ddef2af71029aaef4e3c0d0a1f8f5'
  AND c.company_rut = '76078271'
ORDER BY d.declaration_date DESC;

SELECT *
FROM declared_supply_order
WHERE person_id = 'c66ddef2af71029aaef4e3c0d0a1f8f5'
  AND supplier_rut = '76078271'
LIMIT 15;

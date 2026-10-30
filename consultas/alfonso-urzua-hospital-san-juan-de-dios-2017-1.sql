-- Reproducible source rows for Alfonso Iván Urzúa Gavilán, declaration × OC.
SELECT p.full_name, d.declaration_id, d.source_id, d.declaration_date,
       d.institution, d.position, c.legal_name, c.company_rut,
       c.type, c.quantity, c.value_clp, c.is_controlling, c.acquisition_date
FROM person p
JOIN declaration d ON d.person_id = p.person_id
JOIN company c ON c.declaration_id = d.declaration_id
WHERE p.full_name = 'ALFONSO IVÁN URZÚA GAVILÁN'
  AND d.declaration_id = 'declaracion_7369f3c86bf3c0a354615432832d9e8f'
  AND c.company_rut = '76069151';

SELECT p.full_name, o.order_code, o.url, o.sent_date, o.status, o.route,
       o.tender_code, o.buyer_name, o.amount_clp, o.amount_uf,
       o.main_rubro, o.same_institution, o.timing, o.exclusion_reason
FROM person p
JOIN declared_supply_order o ON o.person_id = p.person_id
WHERE p.full_name = 'ALFONSO IVÁN URZÚA GAVILÁN'
  AND o.supplier_rut = '76069151'
ORDER BY o.sent_date;

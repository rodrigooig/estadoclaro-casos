-- Semilla: compras dentro de la ventana declarada y con identidad societaria por RUT.
SELECT DISTINCT
  p.full_name,
  o.position_label,
  o.institution,
  co.legal_name,
  co.company_rut,
  dso.order_code,
  dso.sent_date,
  dso.buyer_name,
  dso.amount_clp,
  dso.amount_uf,
  dso.status,
  dso.route,
  dso.same_institution,
  dso.url
FROM declared_supply_order dso
JOIN person p ON p.person_id = dso.person_id
JOIN company co ON co.company_rut = dso.supplier_rut
JOIN declaration d ON d.declaration_id = co.declaration_id AND d.person_id = p.person_id
LEFT JOIN office o ON o.person_id = p.person_id
WHERE p.full_name ILIKE '%Margarita Loreto Navarrete Zurita%'
  AND co.company_rut = '76318827'
  AND dso.supplier_rut = '76318827'
  AND dso.timing = 'during'
  AND dso.is_primary_for_person
ORDER BY dso.sent_date;

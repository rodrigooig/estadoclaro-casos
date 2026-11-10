SELECT
  p.full_name, d.source_id, d.declaration_date, d.start_date, d.position, d.institution,
  c.company_rut, c.legal_name, c.type, c.quantity, c.is_controlling, c.value_clp,
  c.business_activity,
  s.n_orders_during, s.n_orders_after, s.n_orders_excluded, s.n_buyers,
  s.n_same_institution, s.n_direct_award, s.n_agile, s.amount_clp_during,
  s.amount_uf_during, s.first_order_date, s.last_order_date, s.supplier_name,
  s.name_similarity
FROM person p
JOIN declaration d ON d.person_id = p.person_id
JOIN company c ON c.declaration_id = d.declaration_id
JOIN declared_supply s ON s.person_id = p.person_id AND s.supplier_rut = c.company_rut
WHERE p.full_name = 'FRANCO ISRAEL ESPINOZA LOBOS'
  AND c.company_rut = '76183919'
  AND d.source_id = '5114613'
ORDER BY d.declaration_date DESC;

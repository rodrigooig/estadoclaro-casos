-- Semilla agregada; la ficha no atribuye el monto del proveedor a la persona.
SELECT
  p.full_name,
  d.source_id,
  d.declaration_date,
  d.position,
  d.institution,
  c.company_rut,
  c.legal_name,
  c.type,
  c.quantity,
  c.is_controlling,
  c.value_clp,
  ds.n_declarants,
  ds.n_same_institution,
  ds.n_direct_award,
  ds.name_similarity,
  ds.n_orders_during,
  ds.amount_clp_during,
  ds.amount_uf_during
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply ds
  ON ds.person_id = d.person_id
 AND ds.supplier_rut = c.company_rut
WHERE p.full_name = 'CECILIA GARCIA HUIDOBRO MORODER'
  AND d.is_current
  AND c.company_rut = '92580000';

-- Órdenes con proveedor RUT exacto y organismo nombrado en InfoProbidad.
-- No asigna las compras al declarante: son transacciones institucionales.
SELECT order_code, url, sent_date, status, route, is_direct_award, is_agile,
       amount_clp, amount_uf, buyer_name, buyer_key, main_rubro, exclusion_reason
FROM purchase_order
WHERE supplier_rut = '92580000'
  AND (buyer_name ILIKE '%PATRIMONIO%' OR buyer_key ILIKE '%PATRIMONIO%')
ORDER BY sent_date DESC;

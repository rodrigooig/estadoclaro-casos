-- Semilla de triage/cierre: participación declarada y órdenes relacionadas.
-- Solo lectura; corte del gold: 2026-10-27T15:25:49+00:00.
SELECT
  p.full_name,
  d.position,
  d.institution,
  d.declaration_date,
  d.source_id,
  c.legal_name,
  c.company_rut,
  c.type AS participation_type,
  c.is_controlling,
  ds.n_orders_during,
  ds.n_same_institution,
  ds.n_direct_award,
  ds.n_agile,
  ds.amount_clp_during,
  ds.amount_uf_during,
  ds.name_similarity
FROM declared_supply ds
JOIN person p USING (person_id)
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
WHERE ds.person_id = 'ad99f269cef07467dff220ddd7897521'
  AND c.company_rut = '79904570'
  AND d.declaration_date = DATE '2026-08-21';

-- Comprobación de compras a la Municipalidad de Queilen en las órdenes
-- asociadas a la sociedad/persona.
SELECT order_code, sent_date, buyer_name, buyer_key, status, route,
       amount_clp, amount_uf, url
FROM declared_supply_order
WHERE person_id = 'ad99f269cef07467dff220ddd7897521'
  AND (buyer_name ILIKE '%QUEILEN%' OR buyer_key ILIKE '%QUEILEN%')
ORDER BY sent_date, order_code;

-- Perfil resumido de proveedores/órdenes por el modelo oro.
SELECT person_id, legal_name, supplier_rut, participation_type, is_controlling,
       n_orders_during, n_buyers, n_same_institution, n_direct_award, n_agile,
       first_order_date, last_order_date, amount_clp_during, amount_uf_during,
       name_similarity
FROM declared_supply
WHERE person_id = 'ad99f269cef07467dff220ddd7897521'
  AND supplier_rut = '79904570';

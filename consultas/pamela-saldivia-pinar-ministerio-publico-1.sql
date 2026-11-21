SELECT p.full_name, ds.person_id, ds.supplier_rut, ds.legal_name, ds.participation_type, ds.n_orders_during, ds.n_same_institution, ds.amount_clp_during, ds.first_order_date, ds.last_order_date, d.institution, d.position, d.declaration_date
FROM declared_supply ds
JOIN person p USING (person_id)
JOIN declaration d ON d.person_id = ds.person_id AND d.is_current
WHERE ds.n_same_institution > 0
  AND ds.article_4_stake
  AND ds.n_orders_during > 0
  AND ds.n_orders_during < 500
  AND ds.amount_clp_during > 5000000
  AND ds.name_similarity > 0.6
ORDER BY ds.amount_clp_during DESC;

-- Del candidato seleccionado, validar ficha de sociedad en todas las declaraciones.
SELECT d.declaration_date, d.source_id, c.company_rut, c.legal_name, c.type,
       c.quantity, c.is_controlling, c.value_clp
FROM declaration d
JOIN company c USING (declaration_id)
WHERE d.person_id = 'b4210b5cfb064876cbea74410000eede'
  AND c.company_rut = '76077428'
ORDER BY d.declaration_date;

-- Órdenes registradas como mismo organismo comprador.
SELECT order_code, sent_date, status, buyer_name, amount_clp, amount_uf
FROM declared_supply_order
WHERE person_id = 'b4210b5cfb064876cbea74410000eede'
  AND same_institution IS TRUE
ORDER BY sent_date;
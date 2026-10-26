-- Candidatos article_4 con compras durante cargo en misma institución.
SELECT p.full_name, ds.supplier_rut, ds.legal_name, ds.participation_type,
       ds.is_controlling, ds.amount_clp_during, ds.amount_uf_during,
       ds.n_orders_during, ds.n_same_institution, ds.n_direct_award,
       ds.first_order_date, ds.last_order_date, d.institution, d.position
FROM declared_supply ds
JOIN person p USING (person_id)
JOIN declaration d ON d.person_id = ds.person_id AND d.is_current
WHERE ds.article_4_stake AND ds.n_same_institution > 0
ORDER BY ds.amount_clp_during DESC;

-- Detalle de pedidos pertinentes; se desduplica al agregar porque la tabla puede
-- repetir OC por más de una fila de evidencia.
SELECT DISTINCT order_code, sent_date, status, route, is_direct_award,
       buyer_name, amount_clp, amount_uf, url
FROM declared_supply_order
WHERE person_id = 'b4210b5cfb064876cbea74410000eede'
  AND supplier_rut = '76077428' AND same_institution = true
ORDER BY sent_date;

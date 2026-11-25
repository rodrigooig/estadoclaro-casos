-- Pista: Rabindranath Acuña Olate / Sociedad Via Libre Comunicaciones Ltda.
-- Corte del oro: 2026-11-24T20:08:20+00:00
-- Verifica identificación y órdenes deduplicando los registros narrativos.
SELECT p.full_name, ds.supplier_name, ds.supplier_rut, ds.legal_name,
       ds.participation_type, ds.article_4_stake, ds.n_orders_during,
       ds.n_direct_award, ds.first_order_date, ds.last_order_date,
       ds.amount_clp_during, ds.amount_uf_during,
       o.institution, o.position_label, o.status, o.source_uri
FROM declared_supply ds
JOIN person p USING (person_id)
LEFT JOIN office o USING (person_id)
WHERE upper(p.full_name) = 'RABINDRANATH ACUÑA OLATE'
  AND ds.supplier_rut = '76201674';

SELECT DISTINCT order_code, url, sent_date, status, route, buyer_name,
       amount_clp, amount_uf, timing, same_institution
FROM declared_supply_order
WHERE person_id = '1afdb9c6ad75af4a617c5d1194e26910'
  AND supplier_rut = '76201674'
ORDER BY sent_date;

SELECT d.declaration_date, d.source_id, c.legal_name, c.company_rut,
       c.type, c.is_controlling, c.value_clp
FROM company c JOIN declaration d USING (declaration_id)
WHERE d.person_id = '1afdb9c6ad75af4a617c5d1194e26910'
  AND c.company_rut = '76201674'
ORDER BY d.declaration_date;

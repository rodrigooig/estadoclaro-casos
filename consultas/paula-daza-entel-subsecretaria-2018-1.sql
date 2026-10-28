-- Pista seed: coincidencia entre participación declarada y proveedor del propio servicio.
-- Datos del corte gold: 2026-10-27T15:25:49+00:00.
SELECT DISTINCT
  d.full_name, x.institution, x.position, x.declaration_date,
  s.supplier_name, s.supplier_rut, s.participation_type, s.is_controlling,
  s.n_orders_during, s.n_same_institution, s.amount_clp_during, s.amount_uf_during
FROM declared_supply s
JOIN declarant d USING (person_id)
JOIN declaration x ON x.person_id = s.person_id
WHERE d.full_name = 'PAULA GRACIELA DAZA NARBONA'
  AND s.supplier_rut = '96806980'
ORDER BY x.declaration_date;

-- Ventana sustentada por declaraciones: 04-04-2018 a 17-07-2019.
-- Comprador institucional exacto según la OC primaria.
SELECT order_code, sent_date, status, route, supplier_name, supplier_rut,
       buyer_code, buyer_name, amount_clp, amount_uf, currency, url
FROM purchase_order
WHERE supplier_rut = '96806980'
  AND buyer_code = '7079'
  AND sent_date BETWEEN DATE '2018-04-04' AND DATE '2019-07-17'
ORDER BY sent_date, order_code;

-- Consulta Servel acotada al person_id y al cruce de gasto de campaña con sociedad declarada.
SELECT campaign_id, election_name, name, office, expense_clp, n_self_supply,
       self_supply_clp, audit_status, source_uri
FROM campaign
WHERE person_id = 'a59dfafdf75bc7701e378f48aacd6074';
SELECT * FROM campaign_self_supply
WHERE person_id = 'a59dfafdf75bc7701e378f48aacd6074';

-- Identidad, participación, ventana y órdenes directas para Felipe Cañoles.
-- Ejecutado únicamente con ec-gold-sql, corte meta.build_date 2026-11-22T04:10:18+00:00.
SELECT ds.person_id, p.full_name, ds.supplier_rut, ds.legal_name,
       ds.is_controlling, ds.participation_type, ds.article_4_stake,
       ds.name_similarity, ds.n_orders_during, ds.n_buyers,
       ds.n_same_institution, ds.n_direct_award, ds.first_order_date,
       ds.last_order_date, ds.amount_clp_during, ds.amount_uf_during,
       o.order_code, o.sent_date, o.status, o.route, o.buyer_name,
       o.amount_clp, o.amount_uf, o.url
FROM declared_supply ds
JOIN person p USING (person_id)
LEFT JOIN declared_supply_order o
  ON o.person_id = ds.person_id AND o.supplier_rut = ds.supplier_rut
 AND o.timing = 'during' AND o.is_primary_for_person
WHERE ds.person_id = '59737e97c6a848fa072b785194af5c49'
  AND ds.supplier_rut = '76439524'
ORDER BY o.sent_date;

SELECT count(DISTINCT order_code) AS n_orders,
       count(DISTINCT buyer_key) AS n_buyers,
       sum(amount_clp) AS amount_clp,
       sum(amount_uf) AS amount_uf,
       sum(CASE WHEN same_institution IS TRUE THEN 1 ELSE 0 END) AS same_institution
FROM declared_supply_order
WHERE person_id = '59737e97c6a848fa072b785194af5c49'
  AND supplier_rut = '76439524' AND timing = 'during';

SELECT election_year, office, territory, audit_status, outcome, votes, source_uri
FROM campaign
WHERE person_id = '59737e97c6a848fa072b785194af5c49';

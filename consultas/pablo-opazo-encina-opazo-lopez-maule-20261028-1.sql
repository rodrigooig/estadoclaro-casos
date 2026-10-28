-- Semilla: supply conjunto con participación art. 4 y venta al mismo organismo
-- Reproducible solo en ec-gold-sql; oro build_date 2026-10-27T15:25:49+00:00
SELECT d.full_name, ds.person_id, dec.institution, dec.position, dec.declaration_date,
       ds.supplier_rut, ds.legal_name, ds.participation_type, ds.is_controlling,
       ds.article_4_stake, ds.n_orders_during, ds.n_same_institution,
       ds.n_direct_award, ds.n_agile, ds.amount_clp_during, ds.amount_uf_during,
       ds.n_buyers, ds.first_order_date, ds.last_order_date
FROM declared_supply ds
JOIN declarant d USING (person_id)
JOIN declaration dec ON dec.person_id = ds.person_id AND dec.is_current
WHERE ds.article_4_stake
  AND ds.n_same_institution > 0
  AND ds.amount_clp_during >= 10000000
  AND ds.n_orders_during BETWEEN 1 AND 200
ORDER BY ds.amount_clp_during DESC;

-- Detalle de la pareja elegida; excluir la duplicación aparente por declaración:
-- declared_supply_order replica cada orden por cada declaración asociada.
SELECT DISTINCT o.order_code, o.url, o.sent_date, o.status, o.route,
       o.is_direct_award, o.tender_code, o.buyer_name, o.amount_clp,
       o.amount_uf, o.main_rubro, o.exclusion_reason,
       d.declaration_id, d.declaration_date, d.declaration_type,
       d.position, d.institution, c.legal_name, c.company_rut,
       c.type, c.quantity, c.value_clp, c.is_controlling
FROM declared_supply_order o
JOIN declaration d USING (declaration_id)
JOIN company c USING (declaration_id)
WHERE o.person_id = '82480c1dd3990578f1103374d7ff2482'
  AND o.supplier_rut = '76694754'
  AND c.company_rut = '76694754'
ORDER BY o.sent_date, o.order_code;

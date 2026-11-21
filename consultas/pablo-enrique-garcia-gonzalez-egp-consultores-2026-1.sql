-- Semilla: relación declarada y órdenes contemporáneas; solo ec-gold-sql, corte 2026-11-20.
SELECT d.full_name, s.supplier_rut, s.legal_name, s.participation_type,
       s.is_controlling, s.n_orders_during, s.n_same_institution,
       s.amount_clp_during, s.amount_uf_during, s.name_similarity
FROM declared_supply s
JOIN declarant d USING (person_id)
WHERE s.supplier_rut = '76121832';

SELECT order_code, sent_date, status, route, buyer_name, amount_clp, amount_uf,
       tender_code, timing, same_institution, url
FROM declared_supply_order
WHERE supplier_rut = '76121832'
ORDER BY sent_date, order_code;

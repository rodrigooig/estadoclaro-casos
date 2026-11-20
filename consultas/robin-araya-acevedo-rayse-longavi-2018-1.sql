-- Semilla: participación societaria declarada y órdenes del mismo municipio durante el cargo.
-- Oro de solo lectura; corte meta.build_date 2026-11-20T17:45:38+00:00.
SELECT d.source_id, d.declaration_date, d.institution, d.position, d.start_date,
       p.full_name, c.company_rut, c.legal_name, c.type, c.quantity,
       c.value_clp, c.is_controlling,
       ds.n_declarants, ds.n_orders_during, ds.n_same_institution,
       ds.n_direct_award, ds.n_agile, ds.amount_clp_during, ds.amount_uf_during
FROM declared_supply ds
JOIN declaration d USING (person_id)
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
WHERE ds.person_id = '36b910af47fd37a89b7da3081ef703a1'
  AND ds.supplier_rut = '76484687'
  AND c.company_rut = ds.supplier_rut
ORDER BY d.declaration_date;

-- Órdenes únicas del municipio con causal, estado y unidad del comprador.
SELECT DISTINCT order_code, url, sent_date, status, route, is_direct_award,
       is_agile, tender_code, buyer_name, amount_clp, amount_uf,
       main_rubro, same_institution, timing
FROM declared_supply_order
WHERE person_id = '36b910af47fd37a89b7da3081ef703a1'
  AND supplier_rut = '76484687'
  AND same_institution IS TRUE
  AND timing = 'during'
ORDER BY sent_date;

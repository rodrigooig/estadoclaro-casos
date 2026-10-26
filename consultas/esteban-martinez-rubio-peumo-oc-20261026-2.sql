-- Órdenes únicas del mismo proveedor enviadas a la institución declarada,
-- en el período que el oro clasifica como durante el cargo.
SELECT order_code, url, sent_date, status, amount_clp, amount_uf,
       buyer_name, supplier_rut, route, is_direct_award, is_agile,
       main_rubro, exclusion_reason, timing, same_institution
FROM declared_supply_order
WHERE supplier_rut = '76176473'
  AND timing = 'during'
  AND same_institution IS TRUE
ORDER BY sent_date, order_code;

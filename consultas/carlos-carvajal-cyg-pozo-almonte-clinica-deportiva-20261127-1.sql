-- Hecho de titularidad, cargo y actividad declarados en la DIP 1235014 (corte del oro 2026-11-26T01:01:56+00:00)
SELECT d.source_id, d.declaration_date, d.position, d.institution, a.legal_name, a.company_rut, a.quantity, a.is_controlling, a.value_clp
FROM declaration d
JOIN person p USING (person_id)
JOIN company a USING (declaration_id)
WHERE d.source_id = '1235014'
  AND p.full_name = 'CARLOS JOSE CARVAJAL GALLARDO'
  AND a.company_rut = '77167947';

-- OC, comprador, proveedor, estado, vía, fecha y monto del gold
SELECT order_code, sent_date, status, route, buyer_name, supplier_rut, supplier_name, amount_clp, amount_uf, url
FROM purchase_order
WHERE order_code = '2591-1011-SE24';

-- Conversión reproducible del monto nominal de la OC a UF del día de envío
SELECT o.order_code, o.amount_clp, u.date AS uf_date, u.value AS uf_clp, o.amount_clp/u.value AS amount_uf
FROM purchase_order o
JOIN uf_series u ON u.date = o.sent_date
WHERE o.order_code = '2591-1011-SE24';

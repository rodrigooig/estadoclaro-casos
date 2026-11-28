-- Consulta de pesquisa: compras al proveedor societario de Claudio Cumsille
-- Corte esperado: meta.build_date = 2026-11-27T21:06:24+00:00
SELECT po.order_code, po.sent_date, po.status, po.route, po.tender_code,
       po.buyer_name, po.supplier_rut, po.supplier_name, po.amount_clp,
       po.amount_uf, po.main_rubro
FROM purchase_order po
WHERE po.supplier_rut = '76178611'
  AND po.sent_date BETWEEN DATE '2025-01-01' AND DATE '2026-11-27'
ORDER BY po.sent_date;

-- Resumen por año. purchase_order contiene una fila por orden vigente.
SELECT extract(year FROM sent_date) AS year,
       count(DISTINCT order_code) AS orders,
       round(sum(amount_clp)) AS amount_clp,
       round(sum(amount_uf), 2) AS amount_uf,
       count(DISTINCT buyer_name) AS buyers
FROM purchase_order
WHERE supplier_rut = '76178611'
  AND sent_date BETWEEN DATE '2025-01-01' AND DATE '2026-11-27'
  AND status NOT ILIKE '%cancel%'
GROUP BY year ORDER BY year;

-- Contraste: órdenes dirigidas a la municipalidad que el declarante dirige.
SELECT count(DISTINCT order_code) AS orders_to_peralillo
FROM purchase_order
WHERE supplier_rut = '76178611'
  AND buyer_name ILIKE '%PERALILLO%';

-- Titularidad en la DIP que antecede a las órdenes; IDs son fuentes InfoProbidad.
SELECT d.declaration_date, d.source_id, d.position, d.institution,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling, c.value_clp
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'CLAUDIO CUMSILLE CHOMALI'
  AND d.source_id IN ('1538264', '1950807')
ORDER BY d.declaration_date, c.company_rut;

SELECT value FROM meta WHERE key = 'build_date';

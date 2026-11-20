-- Cifras del caso: órdenes únicas, montos y las emitidas desde el 11-12-2023.
SELECT COUNT(DISTINCT order_code) AS n,
       SUM(amount_clp) AS amount_clp,
       SUM(amount_uf) AS amount_uf,
       COUNT(DISTINCT CASE WHEN sent_date >= DATE '2023-12-11' THEN order_code END) AS n_from_law_date,
       SUM(CASE WHEN sent_date >= DATE '2023-12-11' THEN amount_clp ELSE 0 END) AS clp_from_law_date,
       SUM(CASE WHEN sent_date >= DATE '2023-12-11' THEN amount_uf ELSE 0 END) AS uf_from_law_date,
       MIN(sent_date) AS first_order,
       MAX(sent_date) AS last_order
FROM declared_supply_order
WHERE supplier_rut = '76490266'
  AND buyer_key = 'MUNICIPALIDAD DE LOS SAUCES'
  AND timing = 'during';

-- Desglose por código, fecha, estado, ruta y causal/proceso de compra.
SELECT order_code, sent_date, status, amount_clp, amount_uf, route, tender_code, url
FROM declared_supply_order
WHERE supplier_rut = '76490266'
  AND buyer_key = 'MUNICIPALIDAD DE LOS SAUCES'
  AND timing = 'during'
ORDER BY sent_date;

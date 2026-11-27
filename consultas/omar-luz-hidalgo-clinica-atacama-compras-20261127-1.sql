-- Corte meta.build_date = 2026-11-26T01:01:56+00:00.
-- Una fila por orden, evitando duplicar órdenes que cruzan más de una DIP.
WITH orders AS (
  SELECT DISTINCT order_code, supplier_rut, sent_date, status, buyer_name, buyer_key,
                  amount_clp, amount_uf, route
  FROM declared_supply_order
  WHERE person_id = '0c3adee55764f8de4ef76378af3d470f'
    AND sent_date BETWEEN DATE '2019-12-01' AND DATE '2021-05-15'
    AND status IN ('Aceptada', 'Recepcion Conforme', 'Enviada a proveedor', 'En proceso')
)
SELECT supplier_rut, COUNT(*) AS n_orders,
       ROUND(SUM(amount_clp)) AS amount_clp,
       ROUND(SUM(amount_uf), 2) AS amount_uf
FROM orders
GROUP BY supplier_rut
ORDER BY amount_clp DESC;

-- Comprobación acotada del nexo: órdenes a Municipalidad de Copiapó para los dos RUT
-- declarados, durante el período del cargo que informa InfoProbidad.
SELECT order_code, sent_date, buyer_name, supplier_rut, amount_clp
FROM purchase_order
WHERE supplier_rut IN ('76938510', '78189460')
  AND sent_date BETWEEN DATE '2016-12-06' AND DATE '2021-05-15'
  AND (buyer_key ILIKE '%COPIAPO%' OR buyer_name ILIKE '%COPIAPO%')
ORDER BY sent_date;

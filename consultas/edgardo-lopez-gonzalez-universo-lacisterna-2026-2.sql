-- Las órdenes son hechos por order_code; deduplicamos filas de puentes por declaración.
WITH orders AS (
  SELECT DISTINCT order_code, sent_date, status, is_direct_award, route,
         buyer_name, amount_clp, amount_uf, main_rubro, url
  FROM declared_supply_order
  WHERE person_id = 'f7967a27f7350ff9fab4798996974c2c'
    AND supplier_rut = '76084970'
)
SELECT order_code, sent_date, status, is_direct_award, route, buyer_name,
       amount_clp, amount_uf, main_rubro, url
FROM orders
ORDER BY sent_date;

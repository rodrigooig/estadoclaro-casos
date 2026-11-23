-- Conteo y suma de órdenes distintas del proveedor declarado.
WITH orders AS (
  SELECT DISTINCT order_code, is_direct_award, amount_clp, amount_uf
  FROM declared_supply_order
  WHERE person_id = 'f7967a27f7350ff9fab4798996974c2c'
    AND supplier_rut = '76084970'
)
SELECT count(*) AS n_orders,
       sum(amount_clp) AS sum_clp,
       sum(amount_uf) AS sum_uf,
       count(*) FILTER (WHERE is_direct_award) AS n_direct,
       sum(amount_clp) FILTER (WHERE is_direct_award) AS direct_clp,
       sum(amount_uf) FILTER (WHERE is_direct_award) AS direct_uf
FROM orders;

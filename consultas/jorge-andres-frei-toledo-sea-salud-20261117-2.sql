-- Totales de órdenes únicas en la ventana modelada; CLP ajustado contra primaria.
WITH oc AS (
  SELECT order_code, MIN(sent_date) AS sent_date, MIN(amount_clp) AS gold_clp,
    MIN(timing) AS timing, MIN(route) AS route, MIN(buyer_name) AS buyer_name
  FROM declared_supply_order
  WHERE person_id = (SELECT person_id FROM person WHERE full_name = 'JORGE ANDRES FREI TOLEDO')
    AND supplier_rut = '76120802'
  GROUP BY order_code
), corrected AS (
  SELECT oc.*, CASE WHEN order_code = '1155-3213-SE18' THEN 7224000 ELSE gold_clp END AS clp
  FROM oc
)
SELECT COUNT(*) AS total_orders, COUNT(DISTINCT buyer_name) AS buyers,
  SUM(clp) AS total_clp, ROUND(SUM(clp / u.value), 2) AS total_uf,
  COUNT(*) FILTER (WHERE timing = 'during') AS during_orders,
  SUM(clp) FILTER (WHERE timing = 'during') AS during_clp,
  ROUND(SUM(clp / u.value) FILTER (WHERE timing = 'during'), 2) AS during_uf,
  COUNT(*) FILTER (WHERE timing = 'during' AND route <> 'Proveniente de licitación pública') AS direct_orders,
  SUM(clp) FILTER (WHERE timing = 'during' AND route <> 'Proveniente de licitación pública') AS direct_clp,
  ROUND(SUM(clp / u.value) FILTER (WHERE timing = 'during' AND route <> 'Proveniente de licitación pública'), 2) AS direct_uf
FROM corrected JOIN uf_series u ON u.date = corrected.sent_date;
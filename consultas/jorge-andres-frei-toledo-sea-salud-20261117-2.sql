-- Totales sobre códigos de OC únicos, no sobre filas duplicadas por declaración.
WITH oc AS (
  SELECT
    order_code,
    MIN(sent_date) AS sent_date,
    MIN(amount_clp) AS amount_clp,
    MIN(amount_uf) AS amount_uf,
    MIN(timing) AS timing,
    MIN(route) AS route,
    MIN(buyer_name) AS buyer_name
  FROM declared_supply_order
  WHERE person_id = (
    SELECT person_id FROM person
    WHERE full_name = 'JORGE ANDRES FREI TOLEDO'
  )
    AND supplier_rut = '76120802'
  GROUP BY order_code
)
SELECT
  COUNT(*) AS total_orders,
  COUNT(DISTINCT buyer_name) AS buyers,
  SUM(amount_clp) AS total_clp,
  SUM(amount_uf) AS total_uf,
  COUNT(*) FILTER (WHERE timing = 'during') AS during_orders,
  SUM(amount_clp) FILTER (WHERE timing = 'during') AS during_clp,
  SUM(amount_uf) FILTER (WHERE timing = 'during') AS during_uf,
  COUNT(*) FILTER (WHERE timing = 'during' AND route <> 'Proveniente de licitación pública') AS direct_orders,
  SUM(amount_clp) FILTER (WHERE timing = 'during' AND route <> 'Proveniente de licitación pública') AS direct_clp,
  SUM(amount_uf) FILTER (WHERE timing = 'during' AND route <> 'Proveniente de licitación pública') AS direct_uf
FROM oc;

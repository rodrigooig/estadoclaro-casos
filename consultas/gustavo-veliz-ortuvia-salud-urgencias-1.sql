-- Hechos: participacion declarada y ordenes unicas en su ventana temporal.
-- Artefacto: gold.duckdb, corte 2026-11-22T04:10:18+00:00.
SELECT d.declaration_date, d.source_id, d.position, d.institution,
       c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp,
       c.is_controlling
FROM declaration d
JOIN company c USING (declaration_id)
WHERE d.person_id = (
  SELECT person_id FROM person
  WHERE full_name = 'GUSTAVO PEDRO VÉLIZ ARAYA'
)
  AND d.declaration_date IN (DATE '2017-03-17', DATE '2019-03-11');

WITH x AS (
  SELECT order_code, max(sent_date) AS sent_date, max(status) AS status,
         max(route) AS route, max(buyer_name) AS buyer_name,
         max(amount_clp) AS amount_clp, max(amount_uf) AS amount_uf
  FROM declared_supply_order
  WHERE person_id = (
    SELECT person_id FROM person
    WHERE full_name = 'GUSTAVO PEDRO VÉLIZ ARAYA'
  )
    AND supplier_rut = '76625984'
    AND timing = 'during'
  GROUP BY order_code
)
SELECT order_code, sent_date, status, route, buyer_name, amount_clp, amount_uf
FROM x
ORDER BY sent_date, order_code;

WITH x AS (
  SELECT order_code, max(amount_clp) AS amount_clp,
         max(amount_uf) AS amount_uf, max(route) AS route
  FROM declared_supply_order
  WHERE person_id = (
    SELECT person_id FROM person
    WHERE full_name = 'GUSTAVO PEDRO VÉLIZ ARAYA'
  )
    AND supplier_rut = '76625984'
    AND timing = 'during'
  GROUP BY order_code
)
SELECT count(*) AS unique_orders, sum(amount_clp) AS amount_clp,
       sum(amount_uf) AS amount_uf,
       count(*) FILTER (WHERE route = 'Emergencia, urgencia o imprevisto')
         AS emergency_orders
FROM x;

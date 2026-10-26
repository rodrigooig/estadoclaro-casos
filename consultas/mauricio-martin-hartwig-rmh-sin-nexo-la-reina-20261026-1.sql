-- Pista: Mauricio Martin Hartwig / Comercializadora RMH SpA.
-- Reproducible on the configured read-only gold build; no external joins.
-- 1) Declared authority and company by primary declaration IDs.
SELECT d.source_id, d.declaration_date, d.start_date, d.end_date,
       d.institution, d.position, d.declaration_type,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling,
       c.value_clp, c.currency
FROM declaration d
JOIN company c USING (declaration_id)
WHERE d.person_id = (
  SELECT person_id FROM person WHERE full_name = 'MAURICIO MARTIN HARTWIG'
)
AND c.company_rut = '76348242'
ORDER BY d.declaration_date;

-- 2) Distinct supplier orders during the council term recorded by the current
-- declaration (from 2024-12-06 through gold cutoff 2026-10-23).
SELECT COUNT(DISTINCT order_code) AS orders,
       SUM(amount_clp) AS amount_clp,
       SUM(amount_uf) AS amount_uf,
       COUNT(DISTINCT buyer_name) AS buyers,
       COUNT(DISTINCT CASE WHEN is_direct_award THEN order_code END) AS direct_orders
FROM purchase_order
WHERE supplier_rut = '76348242'
  AND sent_date BETWEEN DATE '2024-12-06' AND DATE '2026-10-23';

-- 3) Check for orders to La Reina during that same term window.
SELECT order_code, sent_date, buyer_name, amount_clp, amount_uf,
       route, is_direct_award, tender_code
FROM purchase_order
WHERE supplier_rut = '76348242'
  AND sent_date BETWEEN DATE '2024-12-06' AND DATE '2026-10-23'
  AND buyer_name ILIKE '%LA REINA%'
ORDER BY sent_date;

-- 4) Compare the orders to the councilor's institution with the full term.
SELECT buyer_name, COUNT(DISTINCT order_code) AS orders,
       SUM(amount_clp) AS amount_clp
FROM purchase_order
WHERE supplier_rut = '76348242'
  AND sent_date BETWEEN DATE '2024-12-06' AND DATE '2026-10-23'
GROUP BY buyer_name
ORDER BY orders DESC;

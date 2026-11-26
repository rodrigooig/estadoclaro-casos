-- Seed/reproducible evidence for miguel-angel-perez-vidal-baul-rio-bueno-2025.
-- Gold is read only via ec-gold-sql; group by order_code to avoid multiplying
-- orders across multiple declarations/windows.
SELECT
  d.source_id,
  d.declaration_date,
  d.declaration_type,
  d.position,
  d.institution,
  c.legal_name,
  c.company_rut,
  c.type AS participation_type,
  c.quantity,
  c.is_controlling,
  o.order_code,
  o.sent_date,
  o.status,
  o.route,
  o.buyer_name,
  o.amount_clp,
  o.amount_uf,
  o.main_rubro,
  o.timing,
  o.url
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
JOIN declared_supply_order o
  ON o.person_id = p.person_id
 AND o.declaration_id = d.declaration_id
 AND o.asset_id = c.asset_id
WHERE p.full_name = 'MIGUEL ANGEL PEREZ VIDAL'
  AND c.company_rut = '76690595'
  AND o.order_code IN ('3850-145-AG25', '3850-691-AG25')
ORDER BY o.sent_date, d.declaration_date;

-- Deduplicated total: each order can join to multiple DIP snapshots.
SELECT COUNT(*) AS n_orders,
       SUM(amount_clp) AS total_clp,
       SUM(amount_uf) AS total_uf,
       MIN(sent_date) AS first_date,
       MAX(sent_date) AS last_date
FROM (
  SELECT order_code, MAX(amount_clp) AS amount_clp,
         MAX(amount_uf) AS amount_uf, MIN(sent_date) AS sent_date
  FROM declared_supply_order
  WHERE supplier_rut = '76690595'
    AND order_code IN ('3850-145-AG25', '3850-691-AG25')
  GROUP BY order_code
);

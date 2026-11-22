-- Pregunta: ¿qué órdenes de TERESA ABUSLEME Y CIA LTDA se cruzan con las declaraciones de Pablo Antonio Milad Abusleme?
-- Gold solo lectura; corte meta.build_date = 2026-11-22T04:10:18+00:00.
SELECT DISTINCT
  d.full_name, dec.source_id, dec.declaration_date, dec.declaration_type,
  dec.position, dec.institution,
  c.legal_name, c.company_rut, c.quantity, c.is_controlling, c.value_clp,
  o.order_code, o.sent_date, o.status, o.route, o.buyer_name,
  o.amount_clp, o.amount_uf, o.timing, o.same_institution, o.url
FROM declared_supply_order o
JOIN person d USING (person_id)
JOIN declaration dec USING (declaration_id)
JOIN company c USING (declaration_id, asset_id)
WHERE o.person_id = '4db0862213acd638886b266830a58e12'
  AND o.supplier_rut = '77042170'
  AND o.exclusion_reason IS NULL
ORDER BY o.sent_date, o.order_code;

-- Resumen sin duplicar órdenes por las declaraciones que las acreditan.
SELECT COUNT(DISTINCT order_code) AS n_orders,
       SUM(amount_clp) AS amount_clp,
       SUM(amount_uf) AS amount_uf,
       MIN(sent_date) AS first_date,
       MAX(sent_date) AS last_date,
       COUNT(DISTINCT buyer_key) AS n_buyers,
       COUNT(DISTINCT order_code) FILTER (WHERE is_direct_award) AS n_direct_award
FROM declared_supply_order
WHERE person_id = '4db0862213acd638886b266830a58e12'
  AND supplier_rut = '77042170'
  AND is_primary_for_person
  AND timing = 'during'
  AND exclusion_reason IS NULL;

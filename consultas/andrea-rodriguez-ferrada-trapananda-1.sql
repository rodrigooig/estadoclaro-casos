-- Wide first-pass screen; artifact cutoff 2026-10-02T15:43:07Z.
-- Reproducible with ec-gold-sql; supplier_rut omitted from public-facing output.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       s.legal_name, s.is_controlling, s.participation_type, s.n_orders_during,
       s.n_same_institution, ROUND(s.amount_clp_during) AS amount_clp,
       s.first_order_date, s.last_order_date
FROM declared_supply s
JOIN panel p USING (person_id)
JOIN declarant d USING (person_id)
WHERE p.is_current
  AND s.n_orders_during >= 5
  AND COALESCE(s.is_widely_held, FALSE) = FALSE
  AND (s.is_controlling OR s.participation_type = 'DERECHO')
ORDER BY s.n_orders_during DESC, s.amount_clp_during DESC NULLS LAST
LIMIT 50;

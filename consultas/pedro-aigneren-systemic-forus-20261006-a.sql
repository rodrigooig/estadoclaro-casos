-- Broad current-company screen: held entities, linked declared procurement, institutional matches.
-- Gold cutoff: 2026-10-06T15:56:08+00:00. Execute with ec-gold-sql.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       s.legal_name, s.supplier_rut, s.n_declarants, s.is_controlling,
       s.n_orders_during, s.n_buyers, s.n_same_institution,
       round(s.amount_clp_during) AS amount_clp, s.n_direct_award,
       s.first_order_date, s.last_order_date, s.is_widely_held
FROM panel p
JOIN declarant d USING (person_id)
JOIN declared_supply s USING (person_id)
WHERE p.is_current
  AND s.n_declarants BETWEEN 1 AND 10
  AND s.n_orders_during BETWEEN 2 AND 100
  AND s.n_same_institution > 0
  AND NOT s.is_widely_held
ORDER BY s.n_same_institution DESC, s.n_orders_during DESC, s.amount_clp_during DESC;
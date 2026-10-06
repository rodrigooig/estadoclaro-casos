-- Company-level declared-supply rows are not person-specific evidence for a widely held stock.
-- Gold cutoff: 2026-10-06T15:56:08+00:00. Execute with ec-gold-sql.
SELECT s.legal_name, s.supplier_rut, s.n_declarants, s.is_controlling,
       s.n_orders_during, s.n_buyers, s.n_same_institution,
       round(s.amount_clp_during) AS amount_clp_during,
       s.is_widely_held, s.n_orders_company, round(s.amount_clp_company) AS amount_clp_company,
       s.company_first_order, s.company_last_order
FROM declared_supply s
JOIN panel p USING (person_id)
JOIN declarant d USING (person_id)
WHERE d.full_name = 'PEDRO ROBERTO AIGNEREN RÍOS'
  AND p.is_current
ORDER BY s.legal_name;
-- Broad screen: current office-holders with article-4 stake flag and small suppliers,
-- at least three in-window orders and a direct-award/Agile flag.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       s.legal_name, s.participation_type, s.is_controlling, s.name_similarity,
       s.n_orders_during, s.n_same_institution, s.n_direct_award, s.n_agile,
       s.amount_clp_during, s.first_order_date, s.last_order_date
FROM declared_supply s
JOIN panel p USING (person_id)
JOIN declarant d USING (person_id)
JOIN office o USING (person_id)
WHERE p.is_current AND o.status = 'vigente'
  AND s.article_4_stake AND NOT s.is_widely_held
  AND s.n_orders_during >= 3 AND s.n_direct_award >= 1
  AND s.name_similarity >= 0.8
ORDER BY s.n_direct_award DESC, s.amount_clp_during DESC NULLS LAST
LIMIT 50;
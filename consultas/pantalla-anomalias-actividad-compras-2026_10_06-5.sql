-- Broad screen: all current panel rows with a same-institution procurement flag.
-- Used to deduplicate against the investigation index and published case files,
-- not as proof of individual involvement.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       p.n_supply_orders, p.n_supply_same_institution, p.supply_amount_clp,
       p.has_outlier, p.confidence
FROM panel p
JOIN declarant d USING (person_id)
WHERE p.is_current AND p.n_supply_same_institution > 0
ORDER BY p.n_supply_same_institution DESC, p.supply_amount_clp DESC
LIMIT 50;
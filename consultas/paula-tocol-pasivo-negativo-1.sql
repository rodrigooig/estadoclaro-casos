-- Broad outlier screen that surfaced this lead.
-- Gold cutoff: 2026-10-02T15:43:07Z. Execute only with ec-gold-sql.
SELECT d.full_name, p.institution, p.position, p.declaration_date,
       p.declaration_id, p.assets_clp, p.liabilities_clp,
       p.net_worth_clp, p.confidence, p.n_assets, p.n_liabilities
FROM panel p
JOIN declarant d USING (person_id)
WHERE p.is_current AND p.has_outlier
ORDER BY p.assets_clp DESC NULLS LAST;

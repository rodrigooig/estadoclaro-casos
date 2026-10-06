-- Broad screen: high declared liabilities relative to assets; triage only, never a finding.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       p.liabilities_clp, p.assets_clp, p.n_liabilities, p.has_outlier, p.confidence
FROM panel p
JOIN declarant d USING (person_id)
WHERE p.is_current AND p.liabilities_clp > p.assets_clp * 2
  AND p.liabilities_clp > 1000000000
ORDER BY p.liabilities_clp DESC
LIMIT 60;
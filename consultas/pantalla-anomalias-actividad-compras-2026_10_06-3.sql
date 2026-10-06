-- Broad screen: current officials with recent paid declared activities and named counterparties.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       a.type, a.industry, a.entity, a.is_paid, a.last_twelve_months
FROM activity a
JOIN panel p ON p.declaration_id = a.declaration_id
JOIN declarant d ON p.person_id = d.person_id
WHERE p.is_current AND a.is_paid AND a.entity IS NOT NULL
ORDER BY a.last_twelve_months DESC, a.entity
LIMIT 70;
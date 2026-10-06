-- Individual declared liabilities and panel totals for exact-name snapshots.
-- Gold cutoff: 2026-10-02T15:43:07Z. Execute only with ec-gold-sql.
SELECT d.declaration_date, d.source_id, d.position, d.institution,
       d.declaration_type, l.value_clp, l.currency, l.type, l.creditor,
       l.normalized_creditor, p.liabilities_clp,
       p.liabilities_adjusted_clp, p.has_outlier, p.confidence
FROM declaration d
JOIN person x ON x.person_id = d.person_id
LEFT JOIN liability l USING (declaration_id)
JOIN panel p USING (declaration_id)
WHERE x.full_name = 'PAULA VERÓNICA TOCOL VILLARROEL'
ORDER BY d.declaration_date DESC, l.value_clp;

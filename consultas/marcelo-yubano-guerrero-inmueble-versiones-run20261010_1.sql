-- Focal comparison of primary real-estate rows for two same-day declarations.
-- Artifact cutoff: 2026-10-09T16:06:27Z. Execute only with ec-gold-sql.
SELECT d.source_id, d.declaration_id, d.declaration_date, d.declaration_type,
       d.position, d.institution, p.full_name, r.*
FROM declaration d
JOIN person p USING (person_id)
LEFT JOIN real_estate r USING (declaration_id)
WHERE d.source_id IN (1219673, 1219754)
ORDER BY d.source_id;
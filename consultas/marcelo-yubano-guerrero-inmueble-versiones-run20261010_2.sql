-- Independent panel/declaration check for same-day records and modelled totals.
-- Artifact cutoff: 2026-10-09T16:06:27Z. Execute only with ec-gold-sql.
SELECT d.source_id, d.declaration_id, d.declaration_date, d.declaration_type,
       d.position, d.institution, x.full_name, p.*
FROM declaration d
JOIN declarant x USING (person_id)
JOIN panel p USING (declaration_id)
WHERE d.source_id IN (1219673, 1219754)
  AND x.full_name = 'MARCELO YUBANO GUERRERO'
ORDER BY d.source_id;
-- Triage source IDs 1343468 and 1582061; saved cutoff from meta.build_date: 2026-10-09T16:06:27Z.
-- Panel totals and detail are joined by declaration_id; each declaration remains separate.
SELECT d.full_name, de.source_id, de.declaration_date, de.declaration_type,
       de.institution, de.position, de.global_liability_amount_clp,
       p.liabilities_clp, p.n_liabilities, p.source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
WHERE d.full_name = 'JUAN JOSÉ CÁRCAMO HEMMELMANN'
  AND de.source_id IN (1343468, 1582061)
ORDER BY de.source_id;

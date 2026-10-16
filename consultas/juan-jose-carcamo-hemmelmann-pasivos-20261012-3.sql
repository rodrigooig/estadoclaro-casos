-- Timeline control: all declaration snapshots for the exact full-name match.
-- Saved cutoff from meta.build_date: 2026-10-09T16:06:27Z.
SELECT d.full_name, de.source_id, de.declaration_date, de.declaration_type,
       de.institution, de.position, de.global_liability_amount_clp,
       p.liabilities_clp, p.n_liabilities, p.source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
WHERE d.full_name = 'JUAN JOSÉ CÁRCAMO HEMMELMANN'
ORDER BY de.declaration_date, de.source_id;

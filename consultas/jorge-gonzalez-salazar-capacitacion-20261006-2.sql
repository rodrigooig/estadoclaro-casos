-- Exact full-name verification of the declaration series and declared company.
-- Gold cutoff: meta.build_date=2026-10-06T15:56:08+00:00.
SELECT d.full_name, p.declaration_id, p.declaration_date, p.institution, p.position,
       p.is_current, p.source_uri, c.legal_name, c.company_rut, c.type, c.quantity,
       c.value_clp, c.is_controlling, c.acquisition_date
FROM company c
JOIN panel p USING (declaration_id)
JOIN declarant d USING (person_id)
WHERE d.full_name = 'JORGE GABRIEL GONZALEZ SALAZAR'
ORDER BY p.declaration_date DESC;

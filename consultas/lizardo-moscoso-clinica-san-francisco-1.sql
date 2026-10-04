-- Current and prior InfoProbidad snapshots for the exact full-name match and declared company.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
SELECT d.declaration_date, d.source_id, d.declaration_type, d.position, d.start_date,
       c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp, c.currency,
       c.acquisition_date, c.is_controlling
FROM company c
JOIN declaration d USING (declaration_id)
JOIN declarant x USING (person_id)
WHERE x.full_name = 'LIZARDO ALBERTO MOSCOSO GONZALEZ'
  AND c.company_rut = '88093300'
ORDER BY d.declaration_date DESC;

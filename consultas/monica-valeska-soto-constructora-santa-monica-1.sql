-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
-- Declaration source rows for the full-name matched declarant and exact supplier RUT.
SELECT
  d.declaration_date,
  d.source_id,
  d.institution,
  d.position,
  c.legal_name,
  c.company_rut,
  c.type,
  c.quantity,
  c.is_controlling,
  c.acquisition_date,
  c.business_activity
FROM company c
JOIN declaration d USING (declaration_id)
JOIN person p USING (person_id)
WHERE p.full_name = 'MONICA VALESKA SOTO SILVA'
  AND c.company_rut = '76007279'
ORDER BY d.declaration_date;

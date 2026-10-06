-- Exact declaration fields for Aigneren, including Forus and Systemic Del ownership/activity.
-- Gold cutoff: 2026-10-06T15:56:08+00:00. Execute with ec-gold-sql.
SELECT d.full_name, p.declaration_date, p.position, p.institution, p.source_uri,
       c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp,
       c.is_controlling, c.acquisition_date
FROM panel p
JOIN declarant d USING (person_id)
JOIN company c USING (declaration_id)
WHERE d.full_name = 'PEDRO ROBERTO AIGNEREN RÍOS'
  AND p.is_current
ORDER BY c.legal_name;
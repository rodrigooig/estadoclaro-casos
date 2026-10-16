-- Chronology of company rows for the full-name-matched declarant.
-- Gold cutoff: meta.build_date=2026-10-13T17:02:26+00:00. Read-only.
SELECT d.declaration_id,d.source_id,d.declaration_date,d.declaration_type,
       d.institution,d.position,c.company_rut,c.legal_name,c.type,
       c.quantity,c.value_clp,c.currency
FROM declaration d
JOIN declarant p ON d.person_id=p.person_id
JOIN company c ON d.declaration_id=c.declaration_id
WHERE p.full_name='JAVIER IGNACIO ARISMENDI VALENZUELA'
  AND c.company_rut IN ('76142911','76269043')
ORDER BY d.declaration_date,d.declaration_id,c.company_rut;

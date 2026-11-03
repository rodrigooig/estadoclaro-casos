-- Persona, declaraciones, sociedad y participación según el oro.
SELECT DISTINCT
  p.full_name,
  dec.declaration_id,
  dec.declaration_date,
  dec.institution,
  dec.position,
  c.legal_name,
  c.company_rut,
  c.type,
  c.quantity,
  c.is_controlling,
  c.acquisition_date
FROM person p
JOIN declaration dec USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.person_id = '04fdd1da0c7f31869bd813f4df32d9f3'
  AND c.company_rut = '76691069'
ORDER BY dec.declaration_date, dec.declaration_id;
SELECT DISTINCT
  d.declaration_date,
  d.source_id,
  d.position,
  d.institution,
  c.legal_name,
  c.company_rut,
  c.quantity,
  c.type,
  c.is_controlling,
  c.business_activity
FROM declaration d
JOIN person p USING (person_id)
LEFT JOIN company c USING (declaration_id)
WHERE p.full_name = 'NORA ANGELA ROSATI JEREZ'
  AND d.declaration_date >= DATE '2023-07-01'
ORDER BY d.declaration_date, d.source_id;

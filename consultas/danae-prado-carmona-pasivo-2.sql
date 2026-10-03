SELECT
  d.declaration_id,
  d.declaration_date,
  d.declaration_type,
  l.type,
  l.creditor,
  l.currency,
  l.value_clp
FROM declaration d
JOIN person p USING (person_id)
JOIN liability l USING (declaration_id)
WHERE p.full_name = 'DANAE PRADO CARMONA'
  AND d.declaration_date >= DATE '2025-01-01'
ORDER BY d.declaration_date, d.declaration_id;

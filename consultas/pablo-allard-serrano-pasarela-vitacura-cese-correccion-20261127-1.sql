-- RUT societario usado para identidad, declaraciones y orden (oro read-only).
SELECT
  d.source_id, d.declaration_date, d.institution, d.position,
  d.start_date, d.declaration_type, c.legal_name, c.company_rut,
  c.quantity, c.is_controlling
FROM declaration d
JOIN company c USING (declaration_id)
JOIN person p USING (person_id)
WHERE p.full_name = 'PABLO ALLARD SERRANO'
  AND c.company_rut = '76598791'
ORDER BY d.declaration_date;

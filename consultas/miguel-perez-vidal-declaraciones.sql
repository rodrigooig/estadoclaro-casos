SELECT p.full_name, d.declaration_id, d.declaration_date, d.start_date, d.end_date,
       d.is_current, d.institution, d.position, d.source_id,
       c.legal_name, c.company_rut, c.type, c.is_controlling, c.quantity,
       c.value_clp
FROM declaration d
JOIN person p USING (person_id)
LEFT JOIN company c USING (declaration_id)
WHERE p.full_name = 'MIGUEL ANGEL PEREZ VIDAL'
ORDER BY d.declaration_date, c.legal_name;

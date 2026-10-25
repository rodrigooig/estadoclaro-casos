SELECT p.full_name, d.declaration_id, d.declaration_date, d.institution, d.position,
       d.declaration_type, d.source_id, c.legal_name, c.company_rut, c.type,
       c.is_controlling, c.value_clp
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'CRISTIAN OSVALDO ALLENDES INOSTROZA'
  AND c.company_rut = '76884703'
ORDER BY d.declaration_date;

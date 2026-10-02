SELECT p.full_name, d.declaration_id, d.declaration_date, d.start_date, d.end_date,
       d.institution, d.position, d.source_id, c.legal_name, c.company_rut,
       c.type, c.is_controlling, c.quantity, c.value_clp, c.acquisition_date
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'PEDRO ENRIQUE GARCIA MUÑOZ'
  AND c.company_rut = '76078271'
ORDER BY d.declaration_date;

SELECT p.full_name, d.declaration_id, d.declaration_date, d.start_date,
       d.institution, d.position, a.type, a.industry, a.entity,
       a.is_paid, a.last_twelve_months
FROM person p
JOIN declaration d USING (person_id)
JOIN activity a USING (declaration_id)
WHERE p.full_name = 'JOSE ANTONIO KAST ADRIASOLA'
  AND a.is_paid = TRUE
ORDER BY d.declaration_date DESC;

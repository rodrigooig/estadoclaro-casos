SELECT d.declaration_id, d.declaration_date, d.institution, d.position, d.end_date,
       p.full_name, a.type, a.entity, a.industry, a.is_paid, a.last_twelve_months,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling, c.business_activity
FROM declaration d
JOIN person p USING (person_id)
LEFT JOIN activity a USING (declaration_id)
LEFT JOIN company c USING (declaration_id)
WHERE p.full_name = 'FEDERICO LEONARDO VENEGAS CANCINO'
ORDER BY d.declaration_date, a.entity;

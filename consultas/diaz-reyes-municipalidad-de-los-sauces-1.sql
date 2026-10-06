SELECT
    meta.value AS build_date,
    d.source_id,
    d.declaration_id,
    d.declaration_date,
    d.institution,
    d.position,
    d.declaration_type,
    p.full_name,
    c.legal_name,
    c.company_rut,
    c.type AS participation_type,
    c.quantity,
    c.is_controlling,
    c.acquisition_date,
    c.business_activity
FROM declaration AS d
JOIN meta ON meta.key = 'build_date'
JOIN person AS p USING (person_id)
JOIN company AS c USING (declaration_id)
WHERE p.full_name = 'NANCY MARISOL DIAZ REYES'
ORDER BY d.declaration_date DESC;

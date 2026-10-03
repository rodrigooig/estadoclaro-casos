-- Corte del oro: meta.build_date 2026-10-02T15:43:07+00:00; lectura con ec-gold-sql.
SELECT p.full_name, d.source_id, d.declaration_date, d.institution, d.position,
       a.type, a.industry, a.entity, a.is_paid, a.relationship, a.purpose
FROM declaration d
JOIN person p USING (person_id)
LEFT JOIN activity a USING (declaration_id)
WHERE p.full_name = 'MARIO GONZALEZ REBOLLEDO'
ORDER BY d.declaration_date DESC, a.entity;

-- Lead: enrique-lee-salud-actividad
-- Artifact cutoff: 2026-10-02T15:43:07+00:00; read-only run 2026-10-03.
-- Declaration/activity history for the exact full name; keeps declaration snapshots distinct.
SELECT p.full_name, d.source_id, d.declaration_id, d.declaration_date,
       d.institution, d.position, d.start_date, d.end_date,
       a.type, a.industry, a.entity, a.is_paid, a.last_twelve_months,
       a.relationship, a.purpose
FROM person p
JOIN declaration d USING (person_id)
LEFT JOIN activity a USING (declaration_id)
WHERE p.full_name = 'ENRIQUE LEE FLORES'
ORDER BY d.declaration_date, a.type, a.entity;

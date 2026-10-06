-- Declaration history and global liability total for the exact full name.
-- Gold cutoff: 2026-10-02T15:43:07Z. Execute only with ec-gold-sql.
SELECT d.declaration_date, d.source_id, d.position, d.institution,
       d.declaration_type, d.global_liability_amount_clp
FROM declaration d
JOIN person p USING (person_id)
WHERE p.full_name = 'PAULA VERÓNICA TOCOL VILLARROEL'
ORDER BY d.declaration_date;

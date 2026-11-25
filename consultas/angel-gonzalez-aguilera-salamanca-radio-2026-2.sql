-- Corte gold.meta.build_date = 2026-11-24T20:08:20+00:00; ejecutar solo con ec-gold-sql.
SELECT o.position_label, o.position, o.institution, o.status,
       o.assumed_on, o.ended_on, o.last_seen, o.last_declaration_type
FROM office o
JOIN person p USING (person_id)
WHERE p.full_name = 'ANGEL GONZÁLEZ AGUILERA'
ORDER BY o.position_label;

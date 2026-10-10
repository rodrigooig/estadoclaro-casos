-- Follow-up series: comparable declared real-estate rows after the same-day records.
-- Artifact cutoff: 2026-10-09T16:06:27Z. Execute only with ec-gold-sql.
SELECT d.source_id, d.declaration_date, d.declaration_type,
       p.full_name, r.value_clp, r.currency, r.comuna, r.registration_year,
       r.acquisition_date, r.property_type, r.is_primary_residence,
       r.rol, r.registration_number
FROM declaration d
JOIN declarant p USING (person_id)
JOIN real_estate r USING (declaration_id)
WHERE p.full_name = 'MARCELO YUBANO GUERRERO'
  AND d.declaration_date > DATE '2024-04-04'
ORDER BY d.declaration_date, d.source_id;
-- Exact-name check of declaration rows and common real-estate registration keys.
-- Artifact cutoff: 2026-10-02T15:43:07+00:00; executed 2026-10-06 UTC.
SELECT p.full_name, pn.institution, pn.position, d.declaration_date, d.source_id,
       r.acquisition_date, r.registration_year, r.value_clp, r.comuna,
       r.property_type, r.rol, r.registration_number, r.fojas, r.conservador
FROM panel pn
JOIN declarant p ON p.person_id = pn.person_id
JOIN declaration d ON d.declaration_id = pn.declaration_id
JOIN real_estate r ON r.declaration_id = d.declaration_id
WHERE pn.is_current
  AND p.full_name IN (
    'VANESSA IVONNE BELTRAND MONTENEGRO',
    'JESSICA ALEJANDRA BELTRAND MONTENEGRO'
  )
  AND r.registration_year = '2025'
ORDER BY r.rol, p.full_name;

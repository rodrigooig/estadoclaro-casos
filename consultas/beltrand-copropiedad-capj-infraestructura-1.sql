-- Screening: current declarations with recent real-estate acquisition dates.
-- Artifact cutoff: 2026-10-02T15:43:07+00:00; executed 2026-10-06 UTC.
SELECT p.full_name, pn.institution, pn.position, d.start_date, d.declaration_date,
       r.acquisition_date, r.value_clp, r.comuna, r.property_type,
       r.is_primary_residence, r.registration_year
FROM panel pn
JOIN declarant p ON p.person_id = pn.person_id
JOIN declaration d ON d.declaration_id = pn.declaration_id
JOIN real_estate r ON r.declaration_id = d.declaration_id
WHERE pn.is_current
  AND r.acquisition_date >= DATE '2025-01-01'
ORDER BY r.value_clp DESC NULLS LAST
LIMIT 50;

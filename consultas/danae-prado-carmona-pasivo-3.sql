SELECT
  d.declaration_date,
  r.comuna,
  r.value_clp,
  r.currency,
  r.is_primary_residence,
  r.acquisition_date
FROM declaration d
JOIN person p USING (person_id)
JOIN real_estate r USING (declaration_id)
WHERE p.full_name = 'DANAE PRADO CARMONA'
  AND d.declaration_date IN (DATE '2025-03-30', DATE '2026-03-31')
ORDER BY d.declaration_date, r.asset_id;

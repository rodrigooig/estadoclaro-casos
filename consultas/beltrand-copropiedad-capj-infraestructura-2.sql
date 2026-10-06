-- Independent asset-family screen: financial assets acquired since 2025.
-- Artifact cutoff: 2026-10-02T15:43:07+00:00; executed 2026-10-06 UTC.
SELECT p.full_name, pn.institution, pn.position, d.start_date, d.declaration_date,
       f.acquisition_date, f.value_clp, f.type, f.issuer, f.quantity, f.currency
FROM panel pn
JOIN declarant p ON p.person_id = pn.person_id
JOIN declaration d ON d.declaration_id = pn.declaration_id
JOIN financial_asset f ON f.declaration_id = d.declaration_id
WHERE pn.is_current
  AND f.acquisition_date >= DATE '2025-01-01'
ORDER BY f.value_clp DESC NULLS LAST
LIMIT 40;

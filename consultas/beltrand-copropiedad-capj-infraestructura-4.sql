-- Declaration-to-public-supply cross-check for the two exact names.
-- Artifact cutoff: 2026-10-02T15:43:07+00:00; executed 2026-10-06 UTC.
SELECT p.full_name, pn.institution, pn.position,
       COUNT(DISTINCT po.order_code) AS order_count,
       COUNT(DISTINCT po.supplier_rut) AS supplier_count,
       SUM(po.amount_clp) AS amount_clp
FROM panel pn
JOIN declarant p ON p.person_id = pn.person_id
JOIN declared_supply ds ON ds.person_id = pn.person_id
JOIN purchase_order po ON po.supplier_rut = ds.supplier_rut
WHERE pn.is_current
  AND p.full_name IN (
    'VANESSA IVONNE BELTRAND MONTENEGRO',
    'JESSICA ALEJANDRA BELTRAND MONTENEGRO'
  )
GROUP BY ALL;

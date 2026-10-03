-- EstadoClaro gold cutoff: 2026-10-02T15:43:07+00:00; read-only execution 2026-10-03.
-- Compare the declaration-level total with separately aggregated liability rows.
-- Scalar subqueries avoid asset/liability join fan-out; preserve source CLP values.
SELECT
  p.full_name,
  d.declaration_date,
  d.institution,
  d.position,
  d.source_id,
  d.global_liability_amount_clp AS declared_global_clp,
  (SELECT SUM(l.value_clp) FROM liability_uf l
   WHERE l.declaration_id = d.declaration_id) AS detail_liabilities_clp,
  (SELECT COUNT(*) FROM liability_uf l
   WHERE l.declaration_id = d.declaration_id) AS detail_liability_rows,
  (SELECT SUM(a.value_clp) FROM asset a
   WHERE a.declaration_id = d.declaration_id) AS detail_assets_clp
FROM declaration d
JOIN person p USING (person_id)
WHERE p.full_name = 'SERGIO ALEJANDRO ARAYA ROJAS'
ORDER BY d.declaration_date;

-- Independent check, same gold cutoff: 2026-10-02T15:43:07+00:00.
-- Aggregate liability rows first, then join one row per declaration.
WITH liabilities AS (
  SELECT declaration_id, SUM(value_clp) AS detail_liabilities_clp,
         COUNT(*) AS detail_liability_rows
  FROM liability_uf
  GROUP BY declaration_id
), assets AS (
  SELECT declaration_id, SUM(value_clp) AS detail_assets_clp
  FROM asset
  GROUP BY declaration_id
)
SELECT p.full_name, d.declaration_date, d.global_liability_amount_clp AS declared_global_clp,
       l.detail_liabilities_clp, l.detail_liability_rows, a.detail_assets_clp
FROM declaration d
JOIN person p USING (person_id)
LEFT JOIN liabilities l USING (declaration_id)
LEFT JOIN assets a USING (declaration_id)
WHERE p.full_name = 'SERGIO ALEJANDRO ARAYA ROJAS'
ORDER BY d.declaration_date;

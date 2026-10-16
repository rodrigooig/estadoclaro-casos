-- Independent evidence review; ec-gold-sql read-only gold artifact.
-- Expected artifact cutoff: 2026-10-09T16:06:27+00:00.
-- Exact full-name match; one row per declaration snapshot; no snapshots summed.
WITH detail AS (
  SELECT declaration_id,
         count(*) AS detail_lines,
         sum(value_clp) AS detail_sum_clp,
         string_agg(type || ': ' || CAST(value_clp AS VARCHAR), ' | ' ORDER BY type, value_clp) AS detail_amounts,
         string_agg(type, ' | ' ORDER BY type) AS detail_types
  FROM liability
  GROUP BY declaration_id
)
SELECT d.full_name, de.source_id, de.declaration_date, de.declaration_type,
       de.institution, de.position, de.global_liability_amount_clp,
       coalesce(x.detail_lines, 0) AS detail_lines,
       coalesce(x.detail_sum_clp, 0) AS detail_sum_clp,
       x.detail_amounts,
       de.global_liability_amount_clp - coalesce(x.detail_sum_clp, 0) AS difference_clp,
       x.detail_types, p.liabilities_clp AS panel_liabilities_clp,
       p.n_liabilities AS panel_liability_lines,
       p.source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
LEFT JOIN detail x USING (declaration_id)
WHERE d.full_name = 'JUAN JOSÉ CÁRCAMO HEMMELMANN'
  AND de.source_id IN (1343468, 1582061, 1275606, 1546788, 1628230, 1842943)
ORDER BY de.declaration_date, de.source_id;

-- Independent control: aggregate liabilities per declaration before joining to the panel.
-- Saved cutoff from meta.build_date: 2026-10-09T16:06:27Z.
WITH detail AS (
  SELECT declaration_id, count(*) AS n_lines, sum(value_clp) AS sum_detail_clp,
         string_agg(DISTINCT type, '; ' ORDER BY type) AS types,
         string_agg(DISTINCT creditor, '; ' ORDER BY creditor) AS creditors
  FROM liability
  GROUP BY declaration_id
)
SELECT d.full_name, de.source_id, de.declaration_date, de.declaration_type,
       de.global_liability_amount_clp, coalesce(detail.n_lines, 0) AS n_lines,
       coalesce(detail.sum_detail_clp, 0) AS sum_detail_clp, detail.types,
       detail.creditors, p.liabilities_clp, p.n_liabilities
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
LEFT JOIN detail USING (declaration_id)
WHERE d.full_name = 'JUAN JOSÉ CÁRCAMO HEMMELMANN'
  AND de.source_id IN (1343468, 1582061)
ORDER BY de.source_id;

-- Independent comparison: pivot the exact company entry by source ID.
-- Gold cutoff: 2026-10-09T16:06:27Z. Run only with ec-gold-sql.
WITH rows AS (
  SELECT de.source_id, d.full_name, de.declaration_date, de.declaration_type,
         p.institution, p.position, c.company_rut, c.legal_name,
         c.quantity, a.declared_value, count(*) OVER (PARTITION BY de.source_id) AS matching_rows
  FROM declaration de
  JOIN declarant d USING (person_id)
  JOIN panel p USING (declaration_id)
  JOIN asset a USING (declaration_id)
  JOIN company c USING (declaration_id, asset_id)
  WHERE de.source_id IN (1017370, 1017105)
    AND c.company_rut = '76035861'
)
SELECT x.full_name, x.declaration_date,
       x.source_id AS periodic_source_id, x.declaration_type AS periodic_type,
       x.company_rut, x.legal_name, x.quantity,
       x.declared_value AS periodic_declared_value, x.matching_rows AS periodic_rows,
       y.source_id AS rectification_source_id, y.declaration_type AS rectification_type,
       y.declared_value AS rectification_declared_value, y.matching_rows AS rectification_rows,
       y.declared_value - x.declared_value AS displayed_value_difference
FROM rows x
JOIN rows y ON x.full_name = y.full_name
           AND x.company_rut = y.company_rut
           AND x.source_id = 1017370
           AND y.source_id = 1017105;
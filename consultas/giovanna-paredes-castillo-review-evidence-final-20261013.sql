-- Independent final review: preserve the source's combined field literally; do not infer a percent unit.
-- Gold cutoff: 2026-10-09T16:06:27Z. Read-only ec-gold-sql.
SELECT de.source_id, de.declaration_date, de.declaration_type,
       d.full_name, p.institution, p.position,
       c.legal_name, c.company_rut,
       'Cantidad / Porcentaje' AS source_field_label,
       c.quantity AS source_field_numeric_value,
       a.declared_value AS source_value_field_numeric_value,
       a.currency AS artifact_currency, a.currency_reading,
       a.implausible, c.is_controlling,
       count(*) OVER (PARTITION BY de.source_id) AS matching_company_rows,
       p.source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
JOIN asset a USING (declaration_id)
JOIN company c USING (declaration_id, asset_id)
WHERE d.full_name = 'GIOVANNA PAREDES CASTILLO'
  AND de.source_id IN (1017370, 1017105, 1023480, 1217224)
  AND c.company_rut = '76035861'
  AND c.legal_name = 'AGRICOLA LOS DEL MONTE LTDA'
ORDER BY de.declaration_date, de.source_id;
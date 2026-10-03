SELECT
  p.full_name,
  d.declaration_date,
  d.declaration_type,
  d.institution,
  d.position,
  d.assets_clp,
  d.liabilities_clp,
  d.assets_uf,
  d.liabilities_uf,
  d.liabilities_adjusted_clp,
  d.has_outlier,
  d.confidence,
  d.source_uri
FROM panel d
JOIN person p USING (person_id)
WHERE p.full_name = 'DANAE PRADO CARMONA'
  AND d.declaration_date >= DATE '2024-01-01'
ORDER BY d.declaration_date, d.declaration_id;

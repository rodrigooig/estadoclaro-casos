-- Comparación documental: dos declaraciones con igual nombre completo y fecha.
-- Reproduce el total global y suma/recuento de líneas declaradas, por fuente; no combina snapshots.
SELECT
  d.source_id,
  p.full_name,
  d.declaration_date,
  d.declaration_type,
  d.institution,
  d.position,
  d.global_liability_amount_clp,
  COUNT(l.liability_id) AS liability_rows,
  SUM(l.value_clp) AS detail_sum_clp,
  STRING_AGG(DISTINCT l.type, ' | ') AS liability_types,
  STRING_AGG(DISTINCT l.creditor, ' | ') AS creditors
FROM declaration d
JOIN person p USING (person_id)
LEFT JOIN liability l USING (declaration_id)
WHERE d.source_id IN ('1168779', '1172389')
GROUP BY d.source_id, p.full_name, d.declaration_date, d.declaration_type,
         d.institution, d.position, d.global_liability_amount_clp
ORDER BY d.source_id;

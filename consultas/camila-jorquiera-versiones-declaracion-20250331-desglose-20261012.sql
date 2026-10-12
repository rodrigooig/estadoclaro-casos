-- Lead: camila-jorquiera-versiones-declaracion-20250331
-- Corte gold: 2026-10-09T16:06:27+00:00. Ejecutar solo con ec-gold-sql.
-- Primera consulta: identidad, fecha/tipo e importes de panel y conteos por tipo.
WITH decls AS (
  SELECT declaration_id, person_id, source_id, declaration_date, declaration_type,
         global_liability_amount_clp
  FROM declaration
  WHERE source_id IN (5099580, 5099347)
)
SELECT d.full_name, x.source_id, x.declaration_date, x.declaration_type,
       x.global_liability_amount_clp, p.assets_clp, p.liabilities_clp,
       p.net_worth_clp, p.confidence, p.has_outlier,
       count(a.asset_id) AS asset_rows,
       count(*) FILTER (WHERE a.asset_type = 'real_estate') AS real_estate_rows
FROM decls x
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
LEFT JOIN asset a USING (declaration_id)
GROUP BY d.full_name, x.source_id, x.declaration_date, x.declaration_type,
         x.global_liability_amount_clp, p.assets_clp, p.liabilities_clp,
         p.net_worth_clp, p.confidence, p.has_outlier
ORDER BY x.source_id;

-- Comprobación separada: detalle por categoría/tipo; no sumar snapshots entre sí.
SELECT dec.source_id, a.asset_type, count(*) AS rows,
       sum(a.value_clp) AS sum_value_clp
FROM asset a
JOIN declaration dec USING (declaration_id)
WHERE dec.source_id IN (5099580, 5099347)
GROUP BY dec.source_id, a.asset_type
ORDER BY dec.source_id, a.asset_type;

SELECT dec.source_id, l.type AS liability_type, l.creditor,
       count(*) AS rows, sum(l.value_clp) AS sum_value_clp
FROM liability l
JOIN declaration dec USING (declaration_id)
WHERE dec.source_id IN (5099580, 5099347)
GROUP BY dec.source_id, l.type, l.creditor
ORDER BY dec.source_id, l.type, l.creditor;

-- Revisor adversarial independiente: comparar los seis snapshots del mismo nombre completo.
-- Solo lectura sobre gold.duckdb; conservar cada declaración por separado.
WITH detalle AS (
  SELECT declaration_id,
         count(*) AS n_partidas,
         sum(value_clp) AS suma_partidas_clp,
         string_agg(type, ' | ' ORDER BY type) AS tipos
  FROM liability
  GROUP BY declaration_id
)
SELECT de.source_id,
       de.declaration_date,
       de.declaration_type,
       de.institution,
       de.position,
       de.global_liability_amount_clp AS total_global_clp,
       coalesce(detalle.n_partidas, 0) AS n_partidas,
       coalesce(detalle.suma_partidas_clp, 0) AS suma_partidas_clp,
       de.global_liability_amount_clp - coalesce(detalle.suma_partidas_clp, 0) AS diferencia_clp,
       detalle.tipos
FROM declaration AS de
JOIN declarant AS d USING (person_id)
LEFT JOIN detalle USING (declaration_id)
WHERE d.full_name = 'JUAN JOSÉ CÁRCAMO HEMMELMANN'
  AND de.source_id IN (1275606, 1343468, 1582061, 1546788, 1628230, 1842943)
ORDER BY de.declaration_date, de.source_id;

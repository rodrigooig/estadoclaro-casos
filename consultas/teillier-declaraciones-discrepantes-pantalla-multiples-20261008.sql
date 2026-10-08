-- Screen: same full-name holder and declaration date, divergent declared totals.
-- Artifact cutoff: 2026-10-08T12:48:32Z. Execute only with ec-gold-sql.
WITH p AS (
  SELECT x.full_name, d.declaration_date, d.declaration_id, d.source_id,
         d.declaration_type, d.global_liability_amount_clp,
         p.assets_clp, p.liabilities_clp, p.source_uri
  FROM declaration d
  JOIN declarant x USING (person_id)
  JOIN panel p USING (declaration_id)
), pairs AS (
  SELECT a.full_name, a.declaration_date,
         a.declaration_id AS declaration_id_a, a.source_id AS source_id_a,
         a.declaration_type AS type_a, a.assets_clp AS assets_a,
         a.liabilities_clp AS liabilities_a,
         a.source_uri AS uri_a,
         b.declaration_id AS declaration_id_b, b.source_id AS source_id_b,
         b.declaration_type AS type_b, b.assets_clp AS assets_b,
         b.liabilities_clp AS liabilities_b,
         b.source_uri AS uri_b
  FROM p a JOIN p b
    ON a.full_name = b.full_name
   AND a.declaration_date = b.declaration_date
   AND a.declaration_id < b.declaration_id
)
SELECT *, greatest(abs(coalesce(assets_a,0)-coalesce(assets_b,0)),
                    abs(coalesce(liabilities_a,0)-coalesce(liabilities_b,0))) AS max_delta_clp
FROM pairs
WHERE abs(coalesce(assets_a,0)-coalesce(assets_b,0)) >= 10000000
   OR abs(coalesce(liabilities_a,0)-coalesce(liabilities_b,0)) >= 10000000
ORDER BY max_delta_clp DESC
LIMIT 100;

-- Independent check of property-line counts and declared amounts across same-day declarations.
-- Artifact cutoff 2026-10-09T16:06:27Z. Read only via ec-gold-sql.
SELECT d.source_id,
       d.declaration_date,
       d.declaration_type,
       COUNT(DISTINCT a.asset_id) AS distinct_asset_ids,
       COUNT(*) AS property_rows,
       SUM(a.value_clp) AS property_value_clp,
       STRING_AGG(DISTINCT r.property_type, ' | ' ORDER BY r.property_type) AS property_types
FROM declaration d
JOIN declarant x USING (person_id)
JOIN asset a USING (declaration_id)
JOIN real_estate r USING (declaration_id, asset_id)
WHERE x.full_name = 'GUSTAVO POBLETE BUSTAMANTE'
  AND d.source_id IN (1725592, 1730106, 1730700)
GROUP BY d.source_id, d.declaration_date, d.declaration_type
ORDER BY d.source_id;

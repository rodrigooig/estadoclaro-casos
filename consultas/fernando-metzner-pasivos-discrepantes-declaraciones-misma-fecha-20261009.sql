-- Exact-source comparison for same-day declaration versions.
-- Artifact cutoff: 2026-10-08T12:48:32Z. Read only via ec-gold-sql.
SELECT d.source_id, d.declaration_date, d.declaration_type,
       d.global_liability_amount_clp,
       p.assets_clp, p.liabilities_clp, p.n_assets, p.n_liabilities,
       p.has_outlier, p.source_uri
FROM declaration d
JOIN declarant x USING (person_id)
JOIN panel p USING (declaration_id)
WHERE x.full_name = 'FERNANDO ESTEBAN METZNER IRIBARREN'
  AND d.source_id IN (820453, 835335)
ORDER BY d.source_id;

-- Candidate screen follow-up: compare exact-source details for same-day declarations.
-- Artifact cutoff 2026-10-09T16:06:27Z. Read only via ec-gold-sql.
SELECT d.source_id, d.declaration_date, d.declaration_type,
       d.institution, d.position, p.source_uri,
       p.assets_clp, p.liabilities_clp, p.n_assets, p.n_liabilities,
       a.asset_type, a.asset_id, a.declared_value, a.currency,
       a.currency_reading, a.value_clp, a.value_uf, a.implausible,
       f.type AS financial_type, c.legal_name,
       r.property_type, r.comuna
FROM declaration d
JOIN declarant x USING (person_id)
JOIN panel p USING (declaration_id)
LEFT JOIN asset a USING (declaration_id)
LEFT JOIN financial_asset f USING (declaration_id, asset_id)
LEFT JOIN company c USING (declaration_id, asset_id)
LEFT JOIN real_estate r USING (declaration_id, asset_id)
WHERE x.full_name = 'GUSTAVO POBLETE BUSTAMANTE'
  AND d.source_id IN (1725592, 1730106, 1730700)
ORDER BY d.source_id, a.asset_type, a.asset_id;

-- Triage source 669568/669760: compare all declarations and asset rows.
-- Artifact cutoff 2026-10-08T12:48:32Z; execute only via ec-gold-sql.
SELECT d.full_name, de.declaration_date, de.declaration_id, de.source_id,
       de.declaration_type, de.institution, de.position, p.source_uri,
       p.assets_clp, p.liabilities_clp, p.assets_uf, p.liabilities_uf,
       p.n_assets, p.n_liabilities, p.has_outlier, p.net_worth_clp
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
WHERE d.full_name = 'GUILLERMO LEÓN TEILLIER DEL VALLE'
  AND de.source_id IN (669568, 669760)
ORDER BY de.source_id;

SELECT de.source_id, a.asset_type, a.asset_id, a.value_clp, a.value_uf,
       a.declared_value, a.currency, a.currency_reading, a.implausible,
       f.type AS financial_type, c.legal_name, r.property_type, r.comuna
FROM declaration de
JOIN declarant d USING (person_id)
JOIN asset a USING (declaration_id)
LEFT JOIN financial_asset f USING (declaration_id, asset_id)
LEFT JOIN company c USING (declaration_id, asset_id)
LEFT JOIN real_estate r USING (declaration_id, asset_id)
WHERE d.full_name = 'GUILLERMO LEÓN TEILLIER DEL VALLE'
  AND de.source_id IN (669568, 669760)
ORDER BY de.source_id, a.asset_type, a.asset_id;

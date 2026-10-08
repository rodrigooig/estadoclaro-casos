-- Independent final adversarial rerun: all five source snapshots and their assets.
-- Gold artifact cutoff: 2026-10-08T12:48:32Z. Read-only; execute via ec-gold-sql.
-- Compare source values per snapshot; do not infer actual wealth, debt, or formal replacement.
SELECT
    d.full_name,
    de.source_id,
    de.declaration_id,
    de.declaration_date,
    de.declaration_type,
    de.institution,
    de.position,
    a.asset_id,
    a.asset_type,
    a.declared_value,
    a.value_clp,
    a.value_uf,
    a.currency,
    a.currency_reading,
    a.implausible,
    f.type AS financial_type,
    c.legal_name AS issuer,
    p.assets_clp,
    p.liabilities_clp,
    p.n_assets,
    p.n_liabilities,
    p.has_outlier,
    p.source_uri
FROM declaration AS de
JOIN declarant AS d USING (person_id)
JOIN asset AS a USING (declaration_id)
LEFT JOIN financial_asset AS f USING (declaration_id, asset_id)
LEFT JOIN company AS c USING (declaration_id, asset_id)
LEFT JOIN panel AS p USING (declaration_id)
WHERE d.full_name = 'GUILLERMO LEÓN TEILLIER DEL VALLE'
  AND de.source_id IN ('669568', '669760', '710408', '855824', '1048633')
ORDER BY de.declaration_date, de.source_id, a.asset_id;

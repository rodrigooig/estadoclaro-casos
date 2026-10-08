-- Series check for the declared APV line; no snapshots are summed.
-- Gold cutoff 2026-10-08T12:48:32Z; execute only via ec-gold-sql.
SELECT d.full_name, de.source_id, de.declaration_date, de.declaration_type,
       de.institution, de.position, a.asset_type, f.type AS financial_type,
       c.legal_name, a.declared_value, a.value_clp, a.currency,
       a.currency_reading, a.implausible, p.assets_clp, p.has_outlier,
       p.source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
JOIN asset a USING (declaration_id)
LEFT JOIN financial_asset f USING (declaration_id, asset_id)
LEFT JOIN company c USING (declaration_id, asset_id)
WHERE d.full_name = 'GUILLERMO LEÓN TEILLIER DEL VALLE'
  AND (f.type ILIKE '%APV%' OR f.type ILIKE '%FONDO MUTUO%')
ORDER BY de.declaration_date, de.source_id;

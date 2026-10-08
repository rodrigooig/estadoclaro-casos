-- Compare the same full-name holder's two declarations dated 2021-03-28.
-- Gold cutoff 2026-10-08T12:48:32Z; execute only via ec-gold-sql.
SELECT d.full_name, de.source_id, de.declaration_id, de.declaration_date,
       de.declaration_type, de.institution, de.position, p.source_uri,
       p.assets_clp, p.liabilities_clp, p.net_worth_clp,
       p.n_assets, p.n_liabilities, p.has_outlier
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
WHERE d.full_name = 'GUILLERMO LEÓN TEILLIER DEL VALLE'
  AND de.source_id IN (669568, 669760)
ORDER BY de.source_id;

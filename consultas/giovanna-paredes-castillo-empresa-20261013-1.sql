-- Compare the same declared company entry across the two filings dated 2023-03-29.
-- Gold cutoff: 2026-10-09T16:06:27Z. Run only with ec-gold-sql.
SELECT de.source_id, de.declaration_date, de.declaration_type,
       p.institution, p.position, p.assets_clp,
       de.global_liability_amount_clp, a.asset_id, a.asset_type,
       a.declared_value, a.value_clp, a.currency, a.currency_reading,
       a.implausible, c.legal_name, c.company_rut, c.quantity,
       c.is_controlling, p.source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
JOIN asset a USING (declaration_id)
JOIN company c USING (declaration_id, asset_id)
WHERE d.full_name = 'GIOVANNA PAREDES CASTILLO'
  AND de.source_id IN (1017370, 1017105)
ORDER BY de.source_id;
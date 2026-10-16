-- Series of declared values for the exact company RUT and full name; one source row per filing.
-- Gold cutoff: 2026-10-09T16:06:27Z. Run only with ec-gold-sql.
SELECT de.source_id, de.declaration_date, de.declaration_type,
       p.institution, p.position, a.declared_value, a.value_clp,
       a.currency, a.currency_reading, c.legal_name, c.company_rut,
       c.quantity, c.is_controlling, p.source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
JOIN asset a USING (declaration_id)
JOIN company c USING (declaration_id, asset_id)
WHERE d.full_name = 'GIOVANNA PAREDES CASTILLO'
  AND c.company_rut = '76035861'
ORDER BY de.declaration_date, de.source_id;
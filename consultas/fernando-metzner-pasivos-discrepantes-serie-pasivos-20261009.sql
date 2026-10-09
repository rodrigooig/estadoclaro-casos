-- Independent source/detail check for the exact-name declaration series.
-- Artifact cutoff: 2026-10-08T12:48:32Z. Read only via ec-gold-sql.
SELECT d.source_id, d.declaration_date, d.declaration_type,
       d.global_liability_amount_clp,
       l.type AS liability_type, l.creditor, l.currency,
       l.value_clp AS detail_value_clp,
       p.n_liabilities, p.liabilities_clp
FROM declaration d
JOIN declarant x USING (person_id)
JOIN panel p USING (declaration_id)
LEFT JOIN liability l USING (declaration_id)
WHERE x.full_name = 'FERNANDO ESTEBAN METZNER IRIBARREN'
  AND d.source_id IN (820453, 835335, 890731, 1007320)
ORDER BY d.declaration_date, d.source_id, l.type;

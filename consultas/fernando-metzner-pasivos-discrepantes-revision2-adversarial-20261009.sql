-- Independent adversarial review: verify the four exact source IDs, names,
-- snapshot dates/types, CLP totals, and each liability row without summing snapshots.
-- Artifact cutoff: 2026-10-08T12:48:32Z. Execute only with ec-gold-sql.
SELECT d.source_id,
       x.full_name,
       d.declaration_date,
       d.declaration_type,
       d.global_liability_amount_clp,
       l.type AS liability_type,
       l.creditor,
       l.currency,
       l.value_clp AS liability_value_clp,
       p.n_liabilities,
       p.liabilities_clp,
       p.source_uri
FROM declaration AS d
JOIN declarant AS x USING (person_id)
JOIN panel AS p USING (declaration_id)
LEFT JOIN liability AS l USING (declaration_id)
WHERE x.full_name = 'FERNANDO ESTEBAN METZNER IRIBARREN'
  AND d.source_id IN (820453, 835335, 890731, 1007320)
ORDER BY d.source_id, l.type, l.creditor;

-- Independent reviewer: exact-name, date/type, currency, detail, and snapshot-row audit.
-- Gold cutoff: 2026-10-08T12:48:32Z. Execute only with ec-gold-sql.
WITH target AS (
  SELECT d.declaration_id, d.source_id, x.full_name,
         d.declaration_date, d.declaration_type,
         d.global_liability_amount_clp
  FROM declaration d
  JOIN declarant x USING (person_id)
  WHERE x.full_name = 'FERNANDO ESTEBAN METZNER IRIBARREN'
    AND d.source_id IN (820453, 835335, 890731, 1007320)
), row_counts AS (
  SELECT source_id, COUNT(*) AS declaration_rows,
         COUNT(DISTINCT declaration_id) AS unique_declarations
  FROM target
  GROUP BY source_id
)
SELECT t.source_id, t.declaration_id, t.full_name,
       t.declaration_date, t.declaration_type,
       t.global_liability_amount_clp,
       r.declaration_rows, r.unique_declarations,
       l.type AS liability_type, l.creditor, l.currency, l.value_clp,
       p.n_liabilities, p.liabilities_clp
FROM target t
JOIN row_counts r USING (source_id)
JOIN panel p USING (declaration_id)
LEFT JOIN liability l USING (declaration_id)
ORDER BY t.source_id, l.type;

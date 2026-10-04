-- Reproduce the latest current panel row and detail-level liabilities.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Read-only via ec-gold-sql.
SELECT
    p.declaration_id,
    p.declaration_date,
    p.institution,
    p.position,
    p.is_current,
    p.assets_clp,
    p.liabilities_clp,
    p.net_worth_clp,
    l.creditor,
    l.value_clp AS declared_amount_clp,
    l.currency,
    l.type
FROM panel AS p
LEFT JOIN liability AS l USING (declaration_id)
WHERE p.person_id = '8214c8d42e435abff291cb2dfb026bb9'
  AND p.is_current
ORDER BY p.declaration_date DESC, l.creditor;

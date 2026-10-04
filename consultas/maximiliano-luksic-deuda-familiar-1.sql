-- Reproduce the declared liability timeline for the full-name matched person.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Read-only via ec-gold-sql.
SELECT
    p.declaration_id,
    p.declaration_date,
    p.institution,
    p.position,
    p.is_current,
    p.liabilities_clp,
    l.creditor,
    l.value_clp AS declared_amount_clp,
    l.currency,
    l.type
FROM panel AS p
LEFT JOIN liability AS l USING (declaration_id)
WHERE p.person_id = '8214c8d42e435abff291cb2dfb026bb9'
ORDER BY p.declaration_date, l.creditor;

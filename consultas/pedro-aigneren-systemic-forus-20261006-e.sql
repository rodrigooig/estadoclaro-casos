-- Independent name-based check against exact and variant supplier names; names are used only to locate records.
-- Gold cutoff: 2026-10-06T15:56:08+00:00. Execute with ec-gold-sql.
SELECT supplier_rut, supplier_name,
       count(*) AS rows, count(DISTINCT order_code) AS unique_codes,
       min(sent_date) AS first_date, max(sent_date) AS last_date
FROM purchase_order
WHERE supplier_name ILIKE '%SYSTEMIC%'
GROUP BY supplier_rut, supplier_name
ORDER BY unique_codes DESC;
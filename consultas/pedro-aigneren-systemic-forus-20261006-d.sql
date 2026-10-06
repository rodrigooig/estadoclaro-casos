-- Exact supplier RUT check for the controlled consulting company, once in the complete PO source.
-- Gold cutoff: 2026-10-06T15:56:08+00:00. Execute with ec-gold-sql.
SELECT supplier_rut, supplier_name,
       count(*) AS rows, count(DISTINCT order_code) AS unique_codes,
       count(DISTINCT buyer_key) AS buyers,
       min(sent_date) AS first_date, max(sent_date) AS last_date,
       sum(amount_clp) AS amount_clp
FROM purchase_order
WHERE supplier_rut = '76577870'
GROUP BY supplier_rut, supplier_name
ORDER BY unique_codes DESC;
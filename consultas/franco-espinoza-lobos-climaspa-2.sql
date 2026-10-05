-- Canonical order ledger by corporate RUT; one row per order_code in purchase_order.
SELECT
    supplier_rut,
    COUNT(DISTINCT order_code) AS order_codes,
    COUNT(DISTINCT buyer_code) AS buyer_codes,
    SUM(amount_clp) AS amount_clp_nominal,
    MIN(sent_date) AS first_sent_date,
    MAX(sent_date) AS last_sent_date,
    COUNT(DISTINCT CASE WHEN is_direct_award THEN order_code END) AS direct_order_codes
FROM purchase_order
WHERE supplier_rut = '76183919'
GROUP BY supplier_rut;

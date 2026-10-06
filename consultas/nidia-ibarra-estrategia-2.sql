-- Canonical unique purchase_order codes split at the officially declared assumption date.
-- Supplier is joined by company RUT; person RUT is not used or retained.
SELECT CASE WHEN sent_date < DATE '2024-12-06' THEN 'before_assumption'
            ELSE 'on_or_after_assumption' END AS period,
       COUNT(DISTINCT order_code) AS unique_orders,
       SUM(amount_clp) AS total_clp,
       SUM(CASE WHEN is_direct_award THEN 1 ELSE 0 END) AS direct,
       COUNT(DISTINCT buyer_code) AS buyers,
       STRING_AGG(DISTINCT currency, ', ' ORDER BY currency) AS currencies,
       SUM(CASE WHEN foreign_currency THEN 1 ELSE 0 END) AS foreign_currency_rows,
       MIN(sent_date) AS first_sent,
       MAX(sent_date) AS last_sent
FROM purchase_order
WHERE supplier_rut = '76931948'
  AND sent_date >= DATE '2024-07-24'
GROUP BY 1
ORDER BY 1;

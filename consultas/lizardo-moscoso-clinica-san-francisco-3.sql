-- Count/amount of unique orders at or after the declared 2026-01-01 office assumption date.
-- This is temporal overlap only; it does not establish the person's involvement in any order.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
SELECT COUNT(DISTINCT order_code) AS n_orders,
       ROUND(SUM(amount_clp)) AS amount_clp,
       MIN(sent_date) AS first_date, MAX(sent_date) AS last_date
FROM declared_supply_order
WHERE person_id = 'e58c1ce3e76344388791ed4ca60c0535'
  AND supplier_rut = '88093300'
  AND sent_date >= DATE '2026-01-01';

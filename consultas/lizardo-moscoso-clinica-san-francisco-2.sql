-- Exact supplier RUT match; aggregate each public purchase order once and by buyer.
-- The query intentionally uses distinct order_code to avoid counting repeated snapshot rows.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
SELECT buyer_name, COUNT(DISTINCT order_code) AS n_orders,
       ROUND(SUM(amount_clp)) AS sum_clp,
       MIN(sent_date) AS first_date, MAX(sent_date) AS last_date,
       COUNT(DISTINCT tender_code) AS n_tenders
FROM declared_supply_order
WHERE person_id = 'e58c1ce3e76344388791ed4ca60c0535'
  AND supplier_rut = '88093300'
GROUP BY buyer_name
ORDER BY sum_clp DESC;

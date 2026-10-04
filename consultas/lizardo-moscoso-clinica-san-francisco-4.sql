-- Independent measurement against purchase_order after obtaining the candidate codes from
-- declared_supply_order; exact supplier RUT+DV and date window. Compare unique count and sum.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
SELECT COUNT(*) AS row_count,
       COUNT(DISTINCT order_code) AS unique_orders,
       MIN(sent_date) AS first_order, MAX(sent_date) AS last_order,
       ROUND(SUM(amount_clp)) AS total_clp
FROM purchase_order
WHERE supplier_rut = '88093300'
  AND supplier_dv = '0'
  AND sent_date BETWEEN DATE '2023-12-15' AND DATE '2026-06-09'
  AND order_code IN (
      SELECT DISTINCT order_code
      FROM declared_supply_order
      WHERE person_id = 'e58c1ce3e76344388791ed4ca60c0535'
        AND supplier_rut = '88093300'
  );

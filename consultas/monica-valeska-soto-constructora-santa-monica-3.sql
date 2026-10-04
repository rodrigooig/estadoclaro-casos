-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
-- Independent order-ledger re-count by exact legal-entity RUT before the
-- recorded deed transfer date. Artifact totals are not audited proceeds or income.
SELECT
  COUNT(DISTINCT order_code) AS unique_orders,
  COUNT(DISTINCT buyer_name) AS unique_buyers,
  COUNT(DISTINCT tender_code) AS unique_tenders,
  SUM(amount_clp) AS artifact_nominal_amount_clp,
  MIN(sent_date) AS first_order,
  MAX(sent_date) AS last_order
FROM purchase_order
WHERE supplier_rut = '76007279'
  AND supplier_dv = '6'
  AND sent_date < DATE '2023-09-06';

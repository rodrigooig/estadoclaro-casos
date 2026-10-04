-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
-- Primary-for-person order records in the declared window, split at the
-- public deed date of 2023-09-06; do not treat post-transfer company orders as
-- the declarant's ownership-period activity. Each order_code is distinct.
SELECT DISTINCT
  order_code,
  sent_date,
  status,
  route,
  tender_code,
  buyer_name,
  supplier_rut,
  amount_clp,
  main_rubro,
  same_institution,
  CASE
    WHEN sent_date < DATE '2023-09-06' THEN 'before_transfer'
    ELSE 'on_or_after_transfer'
  END AS deed_period
FROM declared_supply_order
WHERE person_id = '1487361bf789e28715ca1be5cb51a145'
  AND supplier_rut = '76007279'
  AND is_primary_for_person
  AND timing = 'during'
ORDER BY sent_date, order_code;

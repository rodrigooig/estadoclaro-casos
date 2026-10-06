-- Deduplicate declaration snapshots: exactly one row per primary purchase-order code.
-- Use the latest values per code; do not sum repeated per-declaration joins.
-- Gold cutoff: meta.build_date=2026-10-06T15:56:08+00:00.
WITH orders AS (
  SELECT order_code, max(sent_date) AS sent_date, max(status) AS status,
         max(buyer_name) AS buyer_name, max(amount_clp) AS amount_clp,
         max(main_rubro) AS main_rubro, max(is_direct_award::INT) AS is_direct_award,
         max(is_agile::INT) AS is_agile, max(tender_code) AS tender_code,
         max(url) AS url, max(same_institution) AS same_institution,
         max(timing) AS timing
  FROM declared_supply_order s
  JOIN declarant d USING (person_id)
  WHERE d.full_name = 'JORGE GABRIEL GONZALEZ SALAZAR'
  GROUP BY order_code
)
SELECT * FROM orders ORDER BY sent_date;

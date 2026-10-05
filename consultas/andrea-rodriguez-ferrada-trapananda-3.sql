-- Two independent checks of the procurement window and institution overlap.
-- Gold cutoff 2026-10-02T15:43:07Z. Purchase-order codes are counted distinctly.
SELECT COUNT(DISTINCT order_code) AS n_distinct_codes,
       COUNT(*) AS row_count,
       COUNT(DISTINCT buyer_key) AS n_buyer_keys,
       COUNT(DISTINCT buyer_name) AS n_buyer_labels,
       ROUND(SUM(amount_clp)) AS amount_clp,
       MIN(sent_date) AS first_sent_date,
       MAX(sent_date) AS last_sent_date,
       COUNT(DISTINCT CASE WHEN is_direct_award THEN order_code END) AS direct_award_codes,
       COUNT(DISTINCT CASE WHEN is_agile THEN order_code END) AS agile_codes,
       COUNT(DISTINCT CASE WHEN status ILIKE '%cancel%' THEN order_code END) AS cancelled_codes
FROM declared_supply_order
WHERE person_id = 'c61665eb759a8538f1efd3bdbccb5a07'
  AND supplier_rut = '76226856'
  AND is_primary_for_person
  AND timing = 'during';

-- Independently re-read the canonical purchase_order table by exact supplier company RUT
-- and the observed interval; this checks the declared-supply join's count and total.
SELECT COUNT(DISTINCT order_code) AS n_distinct_codes,
       COUNT(DISTINCT buyer_key) AS n_buyer_keys,
       COUNT(DISTINCT buyer_name) AS n_buyer_labels,
       ROUND(SUM(amount_clp)) AS amount_clp,
       MIN(sent_date) AS first_sent_date,
       MAX(sent_date) AS last_sent_date,
       COUNT(DISTINCT CASE WHEN buyer_name ILIKE '%PODER JUDICIAL%' THEN order_code END) AS judicial_buyer_codes
FROM purchase_order
WHERE supplier_rut = '76226856'
  AND sent_date BETWEEN DATE '2022-03-31' AND DATE '2025-11-24';

-- Individual canonical purchase-order codes to spot-check in Mercado Público.
SELECT order_code, sent_date, status, route, is_direct_award, is_agile,
       tender_code, buyer_name, ROUND(amount_clp) AS amount_clp,
       main_rubro, url
FROM declared_supply_order
WHERE person_id = 'c61665eb759a8538f1efd3bdbccb5a07'
  AND supplier_rut = '76226856'
  AND is_primary_for_person
  AND timing = 'during'
ORDER BY sent_date DESC, amount_clp DESC
LIMIT 25;

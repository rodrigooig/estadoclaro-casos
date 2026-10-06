-- Count distinct primary order codes per declared supplier, not declaration snapshots.
-- Gold cutoff: 2026-10-06T15:56:08+00:00.
SELECT legal_name,
       count(DISTINCT order_code) AS unique_orders,
       count(DISTINCT buyer_key) AS buyers,
       sum(amount_clp) AS amount_clp,
       min(sent_date) AS first_order,
       max(sent_date) AS last_order,
       count(DISTINCT declaration_id) AS snapshots,
       count(DISTINCT CASE WHEN same_institution THEN order_code END) AS same_institution_true
FROM declared_supply_order
WHERE person_id = '37a73f1618573fd6758132c35df90f1e'
  AND is_primary_for_person
GROUP BY legal_name
ORDER BY legal_name;

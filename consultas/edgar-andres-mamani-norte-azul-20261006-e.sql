-- Keep false and unknown institution matches distinct for each legal entity.
-- Gold cutoff: 2026-10-06T15:56:08+00:00.
SELECT legal_name,
       count(DISTINCT CASE WHEN same_institution IS TRUE THEN order_code END) AS same_true,
       count(DISTINCT CASE WHEN same_institution IS FALSE THEN order_code END) AS same_false,
       count(DISTINCT CASE WHEN same_institution IS NULL THEN order_code END) AS same_null,
       count(DISTINCT CASE WHEN timing = 'during' THEN order_code END) AS during_unique,
       count(DISTINCT order_code) AS unique_total
FROM declared_supply_order
WHERE person_id = '37a73f1618573fd6758132c35df90f1e'
  AND is_primary_for_person
GROUP BY legal_name
ORDER BY legal_name;

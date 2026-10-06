-- Exact negative check for Colchane buyer names; report only this field/query scope.
-- Gold cutoff: 2026-10-06T15:56:08+00:00.
SELECT DISTINCT order_code, sent_date, legal_name, buyer_name, amount_clp
FROM declared_supply_order
WHERE person_id = '37a73f1618573fd6758132c35df90f1e'
  AND is_primary_for_person
  AND buyer_name ILIKE '%COLCHANE%'
ORDER BY sent_date, order_code;

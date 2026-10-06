-- Exact supplier-level records and aggregate for the three MOP/DGA orders in the Forus company match.
-- Gold cutoff: 2026-10-06T15:56:08+00:00. Execute with ec-gold-sql.
SELECT order_code, sent_date, supplier_rut, supplier_dv, supplier_name,
       buyer_name, buyer_key, amount_clp, currency, declared_amount,
       route, tender_code, status, main_rubro
FROM purchase_order
WHERE supplier_rut = '86963200'
  AND buyer_name ILIKE '%OBRAS PUBLICAS%'
ORDER BY sent_date, order_code;
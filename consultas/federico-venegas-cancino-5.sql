-- Independent canonical supplier-name and exact-identifier sweep.
-- Artifact cutoff: 2026-10-02T15:43:07Z.
SELECT order_code, sent_date, supplier_name, supplier_rut, supplier_dv,
       buyer_name, amount_clp, status
FROM purchase_order
WHERE regexp_replace(supplier_rut, '[^0-9]', '', 'g') = '77704240'
   OR lower(supplier_name) LIKE '%sociedad medica federico venegas%'
   OR lower(supplier_name) LIKE '%federico venegas%'
ORDER BY sent_date, order_code;
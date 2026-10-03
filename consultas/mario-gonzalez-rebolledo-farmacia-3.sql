-- Corte del oro: meta.build_date 2026-10-02T15:43:07+00:00; lectura con ec-gold-sql.
SELECT order_code, sent_date, supplier_rut, supplier_dv, supplier_name, buyer_name,
       amount_clp, amount_uf, contract_type, tender_code
FROM purchase_order
WHERE lower(supplier_name) LIKE '%marquez kacic%'
   OR lower(supplier_name) LIKE '%farmacia y perfumeria tania%'
ORDER BY sent_date;

-- Corte del oro: meta.build_date 2026-10-02T15:43:07+00:00; lectura con ec-gold-sql.
SELECT order_code, sent_date, supplier_rut, supplier_dv, supplier_name, buyer_name,
       amount_clp, amount_uf, contract_type, tender_code
FROM purchase_order
WHERE regexp_replace(supplier_rut, '[^0-9]', '', 'g') = '76306493'
ORDER BY sent_date;

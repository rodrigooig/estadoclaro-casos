-- Canonical order list since the official assumption date; one row per purchase_order record.
SELECT order_code, sent_date, status, route, is_direct_award, is_agile,
       buyer_name, buyer_code, amount_clp, main_rubro, url
FROM purchase_order
WHERE supplier_rut = '76931948'
  AND sent_date >= DATE '2024-12-06'
ORDER BY sent_date, order_code;

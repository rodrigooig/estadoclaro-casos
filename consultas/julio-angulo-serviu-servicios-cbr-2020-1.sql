-- Four unique purchase orders to Julio Mario Angulo Matamala by supplier RUT.
-- Totals repeat on each row to keep this a single reproducible result set.
SELECT order_code, sent_date, status, supplier_rut, supplier_dv, supplier_name,
       buyer_name, amount_clp, amount_uf, route, main_rubro, url,
       COUNT(*) OVER () AS unique_orders,
       SUM(amount_clp) OVER () AS total_clp,
       SUM(amount_uf) OVER () AS total_uf
FROM purchase_order
WHERE order_code IN ('657-163-AG20', '657-193-AG20', '657-223-AG20', '657-238-AG20')
ORDER BY sent_date, order_code;

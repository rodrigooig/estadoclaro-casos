-- Gold de solo lectura; corte 2026-10-23T14:20:50+00:00.
-- Órdenes históricas exactas para el RUT de la sociedad declarada.
SELECT order_code, url, sent_date, status, route, is_direct_award, tender_code,
       buyer_name, amount_clp, amount_uf, supplier_rut, supplier_dv,
       supplier_name, main_rubro
FROM purchase_order
WHERE supplier_rut = '76214007'
ORDER BY sent_date, order_code;

SELECT order_code, sent_date, status, route, is_direct_award,
       supplier_rut, supplier_name, buyer_code, buyer_name,
       amount_clp, amount_uf, main_rubro, n_items, url
FROM purchase_order
WHERE supplier_rut = '76317272'
ORDER BY sent_date, order_code;
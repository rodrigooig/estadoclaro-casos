SELECT DISTINCT order_code, sent_date, status, route, buyer_name, amount_clp, amount_uf, url
FROM declared_supply_order
WHERE supplier_rut = '76884703'
ORDER BY sent_date, order_code;

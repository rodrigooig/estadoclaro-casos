SELECT DISTINCT
       order_code, sent_date, status, route, is_direct_award, is_agile,
       tender_code, buyer_name, amount_clp, amount_uf, main_rubro
FROM declared_supply_order
WHERE supplier_rut = '76349892'
ORDER BY sent_date;

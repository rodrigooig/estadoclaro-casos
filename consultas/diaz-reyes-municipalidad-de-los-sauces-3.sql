SELECT DISTINCT
    o.order_code,
    o.sent_date,
    o.status,
    o.route,
    o.tender_code,
    o.buyer_name,
    o.supplier_rut,
    o.supplier_dv,
    o.supplier_name,
    o.amount_clp,
    o.declared_amount,
    o.currency,
    o.main_rubro,
    o.url
FROM purchase_order AS o
WHERE o.supplier_rut = '76490266'
  AND o.buyer_name = 'I MUNICIPALIDAD DE LOS SAUCES'
  AND o.sent_date BETWEEN DATE '2023-04-01' AND DATE '2024-02-29'
ORDER BY o.sent_date, o.order_code;

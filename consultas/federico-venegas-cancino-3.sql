SELECT order_code, created_date, supplier_name, supplier_rut, buyer_name,
       amount_clp, currency, status, url
FROM purchase_order
WHERE lower(supplier_name) LIKE '%sociedad medica federico venegas%'
   OR lower(supplier_name) LIKE '%federico venegas%'
ORDER BY created_date;

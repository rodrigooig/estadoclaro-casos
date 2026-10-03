SELECT order_code, created_date, supplier_name, supplier_rut, buyer_name,
       amount_clp, currency, status, url
FROM purchase_order
WHERE regexp_replace(supplier_rut, '[^0-9]', '', 'g') = '777042408'
ORDER BY created_date;

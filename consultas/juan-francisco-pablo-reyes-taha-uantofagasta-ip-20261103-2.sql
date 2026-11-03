-- Orden por identificador de OC y proveedor según el oro.
SELECT order_code, sent_date, status, route, supplier_rut, supplier_dv,
       supplier_name, buyer_name, amount_clp, amount_uf, main_rubro
FROM purchase_order
WHERE order_code = '4291-1878-TD26';
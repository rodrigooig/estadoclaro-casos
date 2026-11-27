-- Ordenes asociadas al mismo RUT de proveedor; timing/same_institution son
-- campos del modelo y no acreditan por si mismos vigencia del cargo.
SELECT order_code, sent_date, status, route, buyer_name, amount_clp,
       amount_uf, timing, same_institution
FROM declared_supply_order
WHERE supplier_rut = '76598791'
  AND person_id = (
    SELECT person_id FROM declarant
    WHERE full_name = 'PABLO ALLARD SERRANO'
  )
ORDER BY sent_date;

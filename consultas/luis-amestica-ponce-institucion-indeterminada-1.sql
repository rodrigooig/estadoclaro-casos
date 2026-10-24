-- Reproduce las órdenes en ventana de la declaración para Luis Amestica Ponce.
-- Oro de solo lectura; corte referenciado en la ficha.
SELECT order_code, sent_date, status, amount_clp, amount_uf, route,
       is_direct_award, buyer_name, main_rubro, url, timing, same_institution
FROM declared_supply_order
WHERE person_id = 'ec5eef84f6d4ad66fae106901040732d'
  AND supplier_rut = '76508960'
  AND timing = 'during'
ORDER BY sent_date, order_code;

-- Todas las OCs del proveedor RUT 77.937.257 asociadas a César Antonio Arriagada Lira.
-- Una fila por código de orden; todas las cifras de esta investigación derivan de esta consulta.
SELECT DISTINCT order_code, sent_date, status, route, is_direct_award,
       buyer_name, amount_clp, amount_uf, same_institution, timing, url
FROM declared_supply_order
WHERE person_id IN (
    SELECT person_id FROM person
    WHERE full_name = 'CESAR ANTONIO ARRIAGADA LIRA'
)
  AND supplier_rut = '77937257'
ORDER BY sent_date;

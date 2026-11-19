-- Lista de órdenes primarias por RUT societario, una por código de OC.
SELECT DISTINCT order_code, url, sent_date, status, route, is_direct_award, is_agile,
       tender_code, buyer_name, amount_clp, amount_uf, timing, same_institution
FROM declared_supply_order
WHERE person_id = (SELECT person_id FROM person
                   WHERE full_name = 'JORGE GABRIEL GONZALEZ SALAZAR' LIMIT 1)
  AND supplier_rut = '76164688'
  AND is_primary_for_person
ORDER BY sent_date, order_code;
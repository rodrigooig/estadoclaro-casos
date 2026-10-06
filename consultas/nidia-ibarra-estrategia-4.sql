-- Independent cross-check through declared_supply_order, limited to primary rows for this person.
SELECT COUNT(DISTINCT order_code) AS orders,
       COUNT(DISTINCT CASE WHEN buyer_name ILIKE '%MUNICIPALIDAD DE MAULE%'
                           THEN order_code END) AS orders_to_maule,
       COUNT(DISTINCT CASE WHEN same_institution IS TRUE
                           THEN order_code END) AS same_institution_true,
       COUNT(DISTINCT CASE WHEN same_institution IS NULL
                           THEN order_code END) AS same_institution_null
FROM declared_supply_order
WHERE supplier_rut = '76931948'
  AND sent_date >= DATE '2024-12-06'
  AND is_primary_for_person;

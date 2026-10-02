SELECT order_code, sent_date, status, buyer_name, buyer_key, amount_clp, amount_uf,
       main_rubro, route, timing, same_institution, exclusion_reason, url
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id FROM person WHERE full_name = 'PEDRO ENRIQUE GARCIA MUÑOZ'
  )
  AND supplier_rut = '76078271'
  AND is_primary_for_person
  AND same_institution = TRUE
ORDER BY sent_date;

SELECT buyer_key, any_value(buyer_name) AS buyer_name,
       count(DISTINCT order_code) AS n_orders,
       round(sum(amount_clp)) AS amount_clp,
       bool_or(same_institution) AS includes_same_institution_order
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id FROM person WHERE full_name = 'PEDRO ENRIQUE GARCIA MUÑOZ'
  )
  AND supplier_rut = '76078271'
  AND is_primary_for_person
  AND timing = 'during'
  AND exclusion_reason IS NULL
GROUP BY buyer_key
ORDER BY n_orders DESC, amount_clp DESC
LIMIT 20;

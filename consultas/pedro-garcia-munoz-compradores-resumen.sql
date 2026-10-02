SELECT count(DISTINCT buyer_key) AS n_buyers,
       count(DISTINCT order_code) AS n_orders,
       round(sum(amount_clp)) AS amount_clp,
       round(sum(amount_uf), 2) AS amount_uf,
       min(sent_date) AS first_order_date,
       max(sent_date) AS last_order_date
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id FROM person WHERE full_name = 'PEDRO ENRIQUE GARCIA MUÑOZ'
  )
  AND supplier_rut = '76078271'
  AND is_primary_for_person
  AND timing = 'during'
  AND exclusion_reason IS NULL;

SELECT
  p.full_name,
  ds.person_id,
  ds.supplier_name,
  ds.supplier_rut,
  ds.is_controlling,
  ds.article_4_stake,
  ds.n_orders_during,
  ds.n_same_institution,
  ds.n_direct_award,
  ds.amount_clp_during,
  ds.first_order_date,
  ds.last_order_date
FROM declared_supply ds
JOIN person p USING (person_id)
WHERE ds.is_controlling
  AND ds.n_same_institution > 0
  AND ds.n_direct_award > 0
  AND ds.n_orders_during >= 2
  AND ds.amount_clp_during >= 100000000
ORDER BY ds.amount_clp_during DESC, ds.n_same_institution DESC
LIMIT 100;

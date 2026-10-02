select
  d.full_name,
  s.legal_name,
  s.supplier_name,
  s.participation_type,
  s.is_controlling,
  s.name_similarity,
  s.n_orders_during,
  s.n_same_institution,
  s.n_direct_award,
  s.n_agile,
  s.amount_clp_during,
  s.first_order_date,
  s.last_order_date,
  s.supplier_rut
from declared_supply s
join declarant d using (person_id)
where s.n_same_institution > 0
  and s.name_similarity >= 0.75
  and s.n_orders_during >= 3
  and coalesce(s.is_widely_held, false) = false
order by s.n_same_institution desc, s.amount_clp_during desc nulls last
limit 60;

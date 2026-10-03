select
  p.full_name,
  d.institution,
  d.position,
  d.declaration_date,
  s.supplier_name,
  s.legal_name,
  s.supplier_rut,
  s.participation_type,
  s.is_controlling,
  s.name_similarity,
  s.n_orders_during,
  s.n_same_institution,
  s.n_direct_award,
  s.n_agile,
  s.amount_clp_during,
  s.first_order_date,
  s.last_order_date
from declared_supply s
join declaration d using (person_id)
join declarant p using (person_id)
where d.is_current
  and s.article_4_stake
  and s.n_same_institution >= 1
  and s.n_orders_during >= 3
  and coalesce(s.is_widely_held, false) = false
order by s.n_same_institution desc, s.amount_clp_during desc nulls last
limit 40;

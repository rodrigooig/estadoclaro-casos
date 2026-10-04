-- Broader procurement screen: controlling declared suppliers with >CLP 20m
-- during current declarations; use to rotate beyond exact same-institution hits.
-- Artifact cutoff 2026-10-02T15:43:07Z; execute only with ec-gold-sql.
select distinct d.full_name, p.institution, p.position, p.declaration_date,
       s.supplier_name, s.supplier_rut, s.is_controlling, s.n_orders_during,
       round(s.amount_clp_during) as amount_clp_during, s.n_same_institution,
       s.n_direct_award, s.n_agile, s.first_order_date, s.last_order_date
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where p.is_current and s.n_orders_during > 0 and s.is_controlling
  and s.amount_clp_during > 20000000
order by s.amount_clp_during desc;

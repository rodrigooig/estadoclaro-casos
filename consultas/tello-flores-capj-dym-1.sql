-- Broad exploratory screen: currently indexed declarations with controlled suppliers
-- and at least one same-institution order during the declared period.
-- Artifact cutoff 2026-10-02T15:43:07Z; execute only with ec-gold-sql.
select distinct d.full_name, p.institution, p.position, p.declaration_date,
       s.supplier_name, s.supplier_rut, s.is_controlling, s.participation_type,
       s.n_orders_during, round(s.amount_clp_during) as amount_clp_during,
       s.n_same_institution
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where p.is_current and s.n_same_institution > 0
  and s.is_controlling and s.n_orders_during > 0
order by s.amount_clp_during desc;

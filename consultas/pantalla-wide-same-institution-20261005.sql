-- Wide screen: declared suppliers with orders attributed to a declarant's institution.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_id,
       p.n_supply_same_institution, p.n_supply_orders,
       round(p.supply_amount_clp) as supply_clp, s.supplier_name,
       s.supplier_rut, s.is_controlling, s.n_orders_during,
       round(s.amount_clp_during) as amount_clp_during
from panel p join declarant d using(person_id)
join declared_supply s using(person_id)
where p.is_current and p.n_supply_same_institution > 0
order by s.amount_clp_during desc;
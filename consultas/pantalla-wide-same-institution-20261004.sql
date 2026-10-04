-- Exploratory screen: declared suppliers with orders at declarant's institution.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       p.n_supply_orders, round(p.supply_amount_clp) as supply_clp,
       p.n_supply_same_institution, s.supplier_name, s.supplier_rut,
       s.is_controlling, s.n_orders_during, round(s.amount_clp_during) as amount_clp_during
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where p.is_current and p.n_supply_same_institution > 0 and p.supply_amount_clp > 50000000
order by p.supply_amount_clp desc;
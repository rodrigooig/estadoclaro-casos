-- Wide screen: current declarants' declared suppliers with repeated direct awards.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, s.legal_name, s.supplier_rut,
       s.n_orders_during, s.n_direct_award,
       round(s.amount_clp_during) as amount_clp, s.is_controlling,
       s.first_order_date, s.last_order_date
from panel p join declarant d using(person_id)
join declared_supply s using(person_id)
where p.is_current and s.n_orders_during >= 5 and s.n_direct_award >= 3
order by s.n_direct_award desc, s.amount_clp_during desc;
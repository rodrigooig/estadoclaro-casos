-- Wide screen: current declarations whose declared, controlled supplier has
-- at least three orders in the procurement join.
-- Artifact cutoff: 2026-10-02T15:43:07Z; run 2026-10-05.
select d.full_name, p.institution, p.position, p.declaration_id,
       s.legal_name, s.supplier_rut, s.is_controlling,
       s.n_orders_during, s.n_orders_after,
       s.n_same_institution, s.n_direct_award,
       round(s.amount_clp_during) as amount_clp_during,
       s.first_order_date, s.last_order_date
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where p.is_current and s.is_controlling and s.n_orders_during >= 3
order by s.amount_clp_during desc;
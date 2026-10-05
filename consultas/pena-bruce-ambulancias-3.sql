-- Exact-name declaration/supplier cross-reference in panel and declared_supply.
-- Artifact cutoff: 2026-10-02T15:43:07Z; run 2026-10-05.
select d.full_name, p.institution, p.position, p.declaration_id,
       p.declaration_date, p.source_uri, s.legal_name, s.supplier_rut,
       s.is_controlling, s.n_orders_during, s.n_orders_after,
       s.n_same_institution, s.n_direct_award,
       s.first_order_date, s.last_order_date,
       round(s.amount_clp_during) as amount_clp_during,
       round(s.amount_clp_company) as amount_clp_company
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where d.full_name = 'JORGE ANTONIO PEÑA BRUCE'
order by p.declaration_date desc, p.declaration_id;
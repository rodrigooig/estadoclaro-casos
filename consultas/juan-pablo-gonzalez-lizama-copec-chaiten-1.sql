-- Broad screen: declared suppliers with same-institution orders, restricted to smaller declared networks.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Read-only via ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       s.legal_name, s.supplier_rut, s.is_controlling, s.n_declarants,
       s.n_orders_during, s.n_same_institution, s.n_direct_award, s.n_agile,
       round(s.amount_clp_during) as amount_clp,
       s.first_order_date, s.last_order_date
from declared_supply s
join declarant d using (person_id)
left join panel p on p.person_id = s.person_id and p.is_current
where s.n_same_institution > 0
  and s.n_orders_during >= 2
  and s.n_declarants <= 10
  and s.amount_clp_during > 1000000
order by s.n_same_institution desc, s.amount_clp_during desc;
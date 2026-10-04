-- Independent company/person linkage and declaration-snapshot check.
-- Artifact cutoff: 2026-10-02T15:43:07Z.
select d.full_name, p.institution, p.position, p.declaration_date,
       p.declaration_id, p.source_uri, s.supplier_name, s.supplier_rut,
       s.is_controlling, s.n_orders_during, s.amount_clp_during
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where d.full_name = 'PATRICIA ANDREA ORTIZ VON NORDENFLYCHT'
  and s.supplier_rut = '96505020'
order by p.declaration_date desc;
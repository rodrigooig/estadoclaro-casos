-- Wide screen: current non-widely-held declared suppliers with orders to the declarant's institution.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
-- supplier_rut intentionally omitted: one candidate is a natural person.
select d.full_name,p.institution,p.position,p.declaration_date,p.source_uri,
       s.legal_name,s.supplier_name,s.is_controlling,s.participation_type,
       s.n_orders_during,s.n_same_institution,
       round(s.amount_clp_during) amount_clp,s.first_order_date,s.last_order_date
from declared_supply s
join panel p using(person_id)
join declarant d using(person_id)
where p.is_current and s.n_same_institution>0
  and coalesce(s.is_widely_held,false)=false
order by s.n_same_institution desc,s.amount_clp_during desc nulls last;
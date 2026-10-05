-- Editorial recheck of the published Parisi / CRS de Maipú lead.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
-- Historical declared-supply metrics join at person_id; do not treat them as a
-- statement that the company remains in the current declaration.
select d.full_name,p.is_current,p.declaration_date,p.institution,p.position,p.source_uri,
       s.legal_name,s.is_controlling,s.participation_type,
       s.n_orders_during,s.n_orders_after,s.n_same_institution,s.n_buyers,
       s.amount_clp_during,s.first_order_date,s.last_order_date
from declared_supply s
join panel p using(person_id)
join declarant d using(person_id)
where lower(s.legal_name) like '%prestaciones medicas%'
order by p.is_current desc,p.declaration_date desc;
-- Independent comparison of the same registered property and reported valuation.
-- Artifact cutoff: 2026-10-08T05:08:05Z. Execute only with ec-gold-sql.
with subject as (
  select d.declaration_id, d.source_id, d.declaration_type, d.declaration_date
  from declaration d join person x using (person_id)
  where x.full_name = 'PAULINA DEL PILAR ARRIAGADA SEPULVEDA'
    and d.source_id in ('1852043', '1852198')
), property as (
  select s.source_id, s.declaration_type, r.comuna, r.rol,
         r.registration_number, r.fojas, r.registration_year,
         r.value_clp, r.currency, r.acquisition_date
  from subject s join real_estate r using (declaration_id)
  where r.registration_number = '8689' and r.fojas = '12613'
)
select *,
       max(value_clp) over () / min(value_clp) over () as reported_value_ratio,
       max(value_clp) over () - min(value_clp) over () as reported_value_difference_clp
from property
order by source_id;

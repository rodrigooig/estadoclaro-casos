-- Primary property records bracketing 2025/2026 declarations; cutoff 2026-10-02T15:43:07Z.
select p.declaration_date, r.comuna, r.rol, r.value_clp, r.property_type,
       r.acquisition_date, r.registration_year
from panel p
join declarant d using (person_id)
join real_estate r using (declaration_id)
where d.full_name = 'EDMUNDO GASTON MOLLER BIANCHI'
  and p.declaration_date in ('2025-03-21', '2026-03-25')
order by p.declaration_date, r.comuna, r.rol;

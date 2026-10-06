-- EstadoClaro gold cutoff: 2026-10-02T15:43:07Z
-- Reproducible exact-name check; execution 2026-10-06 UTC.
select d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       a.type, a.industry, a.entity, a.relationship, a.purpose, a.is_paid,
       a.last_twelve_months
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where upper(d.full_name) = 'GABRIEL IGNACIO GARAY PAILAHUEQUE'
order by p.declaration_date desc, a.entity nulls last;

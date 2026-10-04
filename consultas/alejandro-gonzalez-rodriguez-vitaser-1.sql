-- Exploratory screen for the new health-sector lead; artifact cutoff 2026-10-02T15:43:07Z.
-- Deduplicate declaration snapshots and list activity rows for the exact full name.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       p.source_uri, a.type, a.industry, a.entity, a.is_paid, a.last_twelve_months
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where d.full_name = 'ALEJANDRO MATIAS GONZALEZ RODRIGUEZ'
order by p.declaration_date desc, p.declaration_id, a.type, a.industry;

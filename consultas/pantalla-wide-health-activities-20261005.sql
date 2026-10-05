-- Wide screen: current declarations with paid activity in health-related fields.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, a.type, a.industry, a.entity,
       a.relationship, a.purpose, a.is_paid, a.last_twelve_months,
       p.declaration_date, p.source_uri
from panel p join declarant d using(person_id)
join activity a using(declaration_id)
where p.is_current and a.is_paid
  and (lower(a.industry) like '%salud%' or lower(a.industry) like '%médic%'
       or lower(a.industry) like '%farmac%' or lower(a.entity) like '%clinica%'
       or lower(a.entity) like '%hospital%')
order by d.full_name;
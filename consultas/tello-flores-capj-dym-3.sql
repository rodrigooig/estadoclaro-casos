-- Cross-category screen: currently active declarations with paid activities
-- explicitly marked within the last 12 months and a named entity.
-- Artifact cutoff 2026-10-02T15:43:07Z; execute only with ec-gold-sql.
select distinct d.full_name, p.institution, p.position, p.declaration_date,
       a.type, a.industry, a.entity, a.relationship, a.purpose,
       a.is_paid, a.last_twelve_months
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where p.is_current and a.is_paid and a.last_twelve_months
  and coalesce(a.entity, '') <> ''
order by p.declaration_date desc, d.full_name;

-- Exploratory screen: current declarations with paid activities marked within last 12 months.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_id, a.type, a.industry,
       a.entity, a.relationship, a.purpose
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where p.is_current and a.is_paid and a.last_twelve_months
order by d.full_name;
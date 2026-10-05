-- Broad screen used to surface recent declarations with any remunerated activity.
-- Does not require last_twelve_months; an activity marked current is not the same as recent.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute only with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       a.type, a.industry, a.entity, a.is_paid, a.last_twelve_months
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where p.is_current and a.is_paid
order by p.declaration_date desc
limit 80;

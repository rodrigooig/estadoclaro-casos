-- Reproduce declaration snapshots and declared professional activities for this lead.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.declaration_id, p.declaration_date, p.declaration_type,
       p.is_current, p.institution, p.position, p.source_uri,
       a.type as activity_type, a.industry, a.entity, a.relationship,
       a.purpose, a.is_paid, a.last_twelve_months
from panel p
join declarant d using (person_id)
left join activity a using (declaration_id)
where d.full_name = 'INTI GABRIEL ALAVIA MOYA'
order by p.declaration_date desc, p.declaration_id, a.entity;

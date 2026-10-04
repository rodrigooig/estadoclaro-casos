-- Exact-name check of activity snapshots for the fully identified declarant.
-- Artifact cutoff 2026-10-02T15:43:07Z; execute only with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date,
       p.declaration_id, a.type, a.industry, a.entity, a.relationship,
       a.purpose, a.is_paid, a.last_twelve_months
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where d.full_name = 'JOSÉ MANUEL TELLO FLORES'
order by p.declaration_date desc;

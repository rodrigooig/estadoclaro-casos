-- Full-name cross-check of medical activities over available snapshots.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute only with ec-gold-sql.
select p.declaration_date, p.declaration_id, p.source_uri,
       a.type, a.industry, a.entity, a.is_paid, a.last_twelve_months
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where d.full_name = 'LUIS LEIVA GODOY'
  and a.industry = 'MEDICO'
order by p.declaration_date desc;

-- Exact-name company snapshot check, independent of the declared-supply join.
-- Artifact cutoff 2026-10-02T15:43:07Z; execute only with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date,
       c.legal_name, c.company_rut, c.is_controlling, c.type, c.business_activity
from panel p
join declarant d using (person_id)
join company c using (declaration_id)
where d.full_name = 'JOSÉ MANUEL TELLO FLORES'
order by p.declaration_date desc;

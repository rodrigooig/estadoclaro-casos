-- Activities declared across snapshots; deduplicated by declaration date and fields, not row count.
select p.declaration_date, a.type, a.industry, a.entity,
       a.is_paid, a.last_twelve_months
from panel p
join declarant d using (person_id)
join activity a using (declaration_id)
where d.full_name = 'EDMUNDO GASTON MOLLER BIANCHI'
order by p.declaration_date desc, a.industry, a.entity;

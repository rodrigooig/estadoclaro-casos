-- Confirm whether the declared entity was modeled as an equity holding in the declaration table.
-- Artifact cutoff 2026-10-02T15:43:07Z. Activity entries are separate from company assets.
select d.full_name, p.declaration_date, p.declaration_id, p.source_uri,
       c.legal_name, c.company_rut, c.business_activity, c.type,
       c.quantity, c.value_clp, c.currency, c.is_controlling, c.acquisition_date
from panel p
join declarant d using (person_id)
join company c using (declaration_id)
where d.full_name = 'ALEJANDRO MATIAS GONZALEZ RODRIGUEZ'
  and lower(coalesce(c.legal_name, '')) = 'centro de salud vitaser limitada'
order by p.declaration_date desc;

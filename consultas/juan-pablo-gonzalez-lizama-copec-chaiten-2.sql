-- Exact person/company declaration details for identity, timing and declared holding.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Read-only via ec-gold-sql.
select d.full_name, p.declaration_date, p.declaration_type,
       c.legal_name, c.company_rut, c.business_activity, c.type,
       c.quantity, c.is_controlling, c.country, c.acquisition_date,
       c.value_clp, a.declared_value, a.currency, a.asset_type, a.match_quality
from company c
join declaration p using (declaration_id)
join declarant d using (person_id)
join asset a using (declaration_id, asset_id)
where d.full_name = 'JUAN PABLO GONZALEZ LIZAMA'
order by p.declaration_date desc, c.legal_name;
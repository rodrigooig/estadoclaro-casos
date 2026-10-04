-- Declarant and declared company snapshots; deduplicate source rows.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run only with ec-gold-sql.
select distinct
    d.full_name,
    x.declaration_date,
    x.institution,
    x.position,
    x.declaration_type,
    x.declaration_id,
    c.legal_name,
    c.company_rut,
    c.type,
    c.quantity,
    c.value_clp,
    c.is_controlling,
    c.acquisition_date
from declaration x
join declarant d using (person_id)
join company c using (declaration_id)
where d.full_name = 'LUIS ANTONIO INFANTE BARROS'
  and regexp_replace(c.company_rut, '[^0-9]', '') = '77046310'
order by x.declaration_date;

select
  d.full_name,
  dec.declaration_date,
  dec.source_id,
  p.institution,
  p.position,
  p.assets_clp,
  p.liabilities_clp,
  p.net_worth_clp,
  p.assets_uf,
  p.liabilities_uf,
  p.net_worth_uf,
  p.confidence,
  p.has_outlier
from panel p
join declaration dec using (declaration_id)
join declarant d on d.person_id = p.person_id
where d.full_name ilike '%JARA BUCAREY%'
order by dec.declaration_date;

select
  d.full_name,
  dec.declaration_date,
  p.assets_clp,
  p.liabilities_clp,
  p.net_worth_clp,
  p.assets_uf,
  p.liabilities_uf,
  p.net_worth_uf,
  (select count(*) from real_estate re where re.declaration_id = dec.declaration_id) as real_estate_rows,
  (select sum(re.value_clp) from real_estate re where re.declaration_id = dec.declaration_id) as real_estate_clp
from panel p
join declaration dec using (declaration_id)
join declarant d on d.person_id = p.person_id
where d.full_name ilike '%JARA BUCAREY%'
  and dec.declaration_date between '2023-01-01' and '2026-12-31'
order by dec.declaration_date;

select
  d.full_name,
  dec.declaration_date,
  dec.source_id,
  l.type,
  l.creditor,
  l.value_clp,
  l.currency,
  l.currency_reading,
  l.value_uf,
  l.implausible
from liability_uf l
join declaration dec using (declaration_id)
join declarant d on d.person_id = dec.person_id
where d.full_name ilike '%JARA BUCAREY%'
order by dec.declaration_date, l.value_clp desc;

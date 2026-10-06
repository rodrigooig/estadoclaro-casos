select
  d.full_name,
  dec.source_id,
  dec.declaration_date,
  l.type,
  l.creditor,
  l.value_clp,
  l.currency,
  l.currency_reading
from declaration dec
join declarant d on d.person_id = dec.person_id
join liability_uf l using (declaration_id)
where d.full_name = 'ÁLVARO DOMINGO JARA BUCAREY'
  and dec.source_id in (1170324, 1412441, 1703401)
order by dec.declaration_date, dec.source_id;

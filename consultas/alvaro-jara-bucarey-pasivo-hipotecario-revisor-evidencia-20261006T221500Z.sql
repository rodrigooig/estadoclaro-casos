select
  d.full_name,
  dec.source_id,
  dec.declaration_date,
  dec.declaration_type,
  count(l.declaration_id) as liability_rows,
  string_agg(coalesce(l.type, '<NULL>'), ' | ' order by l.type) as liability_types,
  string_agg(coalesce(l.creditor, '<NULL>'), ' | ' order by l.creditor) as creditors,
  string_agg(coalesce(l.value_clp::text, '<NULL>'), ' | ' order by l.value_clp) as values_clp,
  string_agg(coalesce(l.currency, '<NULL>'), ' | ' order by l.currency) as currencies,
  string_agg(coalesce(l.currency_reading, '<NULL>'), ' | ' order by l.currency_reading) as currency_readings
from declaration dec
join declarant d on d.person_id = dec.person_id
left join liability_uf l using (declaration_id)
where d.full_name = 'ÁLVARO DOMINGO JARA BUCAREY'
  and dec.source_id in (1170324, 1412441, 1703401)
group by d.full_name, dec.source_id, dec.declaration_date, dec.declaration_type
order by dec.declaration_date, dec.source_id;
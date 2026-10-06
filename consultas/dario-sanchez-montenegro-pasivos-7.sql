-- Independent row-level check of Dario's debt records and raw declaration fields.
select
  d.full_name,
  l.declaration_id,
  dec.declaration_date,
  dec.declaration_type,
  dec.institution,
  dec.position,
  l.type,
  l.creditor,
  l.currency,
  l.value_clp,
  lu.value_uf,
  lu.implausible
from liability l
join declaration dec using (declaration_id)
join declarant d using (person_id)
left join liability_uf lu using (declaration_id, liability_id)
where d.full_name = 'DARIO SANCHEZ MONTENEGRO'
order by dec.declaration_date;
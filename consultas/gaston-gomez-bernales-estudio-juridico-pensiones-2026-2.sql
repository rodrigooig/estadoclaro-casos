select d.declaration_id, d.source_id, d.declaration_date, d.declaration_type, d.institution, d.position, c.*
from declaration d
join company c using (declaration_id)
where d.person_id = '656ada14649b34374d0fe9d4a04ed440'
  and c.company_rut = '77751621'
order by d.declaration_date desc;
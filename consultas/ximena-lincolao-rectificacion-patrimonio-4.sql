-- Corte: data/gold.duckdb meta.build_date 2026-10-02T15:43:07+00:00
-- Cruza las compañías y actividades enlazadas a cada declaración; no afirma continuidad.
select
  p.full_name,
  d.declaration_date,
  d.source_id,
  c.legal_name,
  c.type,
  c.quantity,
  c.is_controlling,
  c.business_activity,
  a.type as activity_type,
  a.industry,
  a.entity,
  a.is_paid,
  a.last_twelve_months
from declaration d
join person p using (person_id)
left join company c using (declaration_id)
left join activity a using (declaration_id)
where p.full_name = 'XIMENA FABIOLA LINCOLAO PILQUIAN'
order by d.declaration_date, c.legal_name, a.type;

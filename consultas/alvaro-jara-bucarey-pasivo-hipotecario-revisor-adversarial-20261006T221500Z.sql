-- Revisión adversarial independiente: granularidad por documento y deuda hipotecaria.
-- Contrasta identidad/fechas en declaration, conteos y detalle de pasivos sin joins multiplicadores.
with target as (
  select dec.declaration_id, dec.source_id, dec.declaration_date, dec.declaration_type,
         d.person_id, d.full_name
  from declaration dec
  join declarant d on d.person_id = dec.person_id
  where dec.source_id in (1170324, 1412441, 1703401)
), liability_check as (
  select t.declaration_id,
         count(l.declaration_id) as liability_rows,
         count(*) filter (where l.type ilike '%HIPOTECARIO%') as mortgage_rows,
         string_agg(coalesce(l.type, '<NULL>'), ' || ' order by l.type) as types,
         string_agg(coalesce(l.creditor, '<NULL>'), ' || ' order by l.type) as creditors,
         string_agg(coalesce(l.value_clp::text, '<NULL>'), ' || ' order by l.type) as values_clp,
         string_agg(coalesce(l.currency, '<NULL>'), ' || ' order by l.type) as currencies,
         string_agg(coalesce(l.currency_reading, '<NULL>'), ' || ' order by l.type) as currency_readings
  from target t
  left join liability_uf l on l.declaration_id = t.declaration_id
  group by t.declaration_id
)
select t.full_name, t.person_id, t.source_id, t.declaration_date, t.declaration_type,
       lc.liability_rows, lc.mortgage_rows, lc.types, lc.creditors,
       lc.values_clp, lc.currencies, lc.currency_readings
from target t
join liability_check lc using (declaration_id)
order by t.declaration_date, t.source_id;

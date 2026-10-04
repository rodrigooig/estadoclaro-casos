-- Corte: data/gold.duckdb meta.build_date 2026-10-02T15:43:07+00:00
-- Compara los bienes modelados entre las rectificaciones de mayo y julio.
select
  d.declaration_date,
  d.source_id,
  a.asset_type,
  a.asset_key,
  a.match_quality,
  a.value_clp,
  a.value_uf,
  a.declared_value,
  a.currency,
  a.currency_reading,
  a.implausible
from asset a
join declaration d using (declaration_id)
join person p on p.person_id = a.person_id
where p.full_name = 'XIMENA FABIOLA LINCOLAO PILQUIAN'
  and d.declaration_date in (date '2026-05-26', date '2026-07-20')
order by d.declaration_date, a.asset_type, a.asset_key;

-- Corte: data/gold.duckdb meta.build_date 2026-10-02T15:43:07+00:00
-- Verifica valores y monedas declaradas para instrumentos financieros incluidos en gold.
select
  p.full_name,
  d.declaration_date,
  d.source_id,
  f.type,
  f.issuer,
  f.country,
  f.quantity,
  f.value_clp,
  f.currency
from financial_asset f
join declaration d using (declaration_id)
join person p on p.person_id = d.person_id
where p.full_name = 'XIMENA FABIOLA LINCOLAO PILQUIAN'
order by d.declaration_date, f.issuer;

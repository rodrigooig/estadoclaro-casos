-- Corte: data/gold.duckdb meta.build_date 2026-10-02T15:43:07+00:00
-- Serie de declaraciones y panel; reproduce fechas, delta y nivel de confianza.
select
  p.full_name,
  d.declaration_date,
  d.source_id,
  pl.assets_adjusted_uf,
  pl.liabilities_adjusted_uf,
  pl.net_worth_adjusted_uf,
  pl.delta_adjusted_uf,
  pl.delta_acquisition_adjusted_uf,
  pl.delta_disposal_uf,
  pl.delta_revaluation_uf,
  pl.n_assets,
  pl.n_new_assets,
  pl.n_removed_assets,
  pl.confidence,
  pl.series_has_gaps
from panel pl
join declaration d using (declaration_id)
join person p on p.person_id = pl.person_id
where p.full_name = 'XIMENA FABIOLA LINCOLAO PILQUIAN'
order by d.declaration_date;

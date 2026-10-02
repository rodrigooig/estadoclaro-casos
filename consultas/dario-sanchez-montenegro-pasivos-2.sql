-- EstadoClaro gold cutoff: 2026-09-29T15:40:44+00:00; read-only execution 2026-10-02.
-- Full declaration series for the candidate, to verify chronology and abrupt change.
select
  p.declaration_id,
  d.full_name,
  p.declaration_date,
  p.institution,
  p.position,
  p.assets_uf,
  p.liabilities_uf,
  p.net_worth_uf,
  p.has_outlier,
  p.confidence,
  p.series_has_gaps,
  p.source_uri
from panel p
join declarant d using (person_id)
where p.person_id = 'bfeb37374a43caff10ffc1c0d6b605b1'
order by p.declaration_date;

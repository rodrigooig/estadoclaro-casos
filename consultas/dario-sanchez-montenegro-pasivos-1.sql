-- EstadoClaro gold cutoff: 2026-09-29T15:40:44+00:00; read-only execution 2026-10-02.
-- Broad candidate screen: latest declaration, positive assets, liabilities above assets,
-- excluding panel-level outlier flag; ordered by most negative declared net worth.
select
  p.person_id,
  d.full_name,
  p.declaration_date,
  p.institution,
  p.position,
  p.assets_uf,
  p.liabilities_uf,
  p.net_worth_uf,
  round(p.liabilities_uf / nullif(p.assets_uf, 0), 2) as debt_asset_ratio,
  p.source_uri
from panel p
join declarant d using (person_id)
where p.is_current
  and p.assets_uf > 0
  and p.liabilities_uf > p.assets_uf
  and not p.has_outlier
order by p.net_worth_uf asc
limit 30;

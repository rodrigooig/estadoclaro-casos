-- Cross-check the two 30-03-2019 snapshots against the current panel row.
-- Cutoff: meta.build_date=2026-10-02T15:43:07+00:00; execution 2026-10-04.
select p.full_name,
       d.declaration_date,
       d.n_declaration,
       d.source_id,
       a.asset_key,
       a.value_clp,
       a.declared_value,
       a.currency,
       a.implausible,
       panel.assets_clp,
       panel.liabilities_clp,
       panel.has_outlier,
       panel.confidence
from asset a
join declaration d on d.declaration_id = a.declaration_id
join person p on p.person_id = d.person_id
join panel on panel.declaration_id = d.declaration_id
where p.full_name = 'ALFONSO IVÁN URZÚA GAVILÁN'
  and d.declaration_date = date '2019-03-30'
  and a.asset_type = 'movable'
  and a.asset_key like 'attr|MITSUBISHI|OUTLANDER|2017'
order by d.n_declaration;

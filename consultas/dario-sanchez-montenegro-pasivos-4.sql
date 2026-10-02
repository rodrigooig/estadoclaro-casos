-- EstadoClaro gold cutoff: 2026-09-29T15:40:44+00:00; read-only execution 2026-10-02.
-- Compare raw nominal debt and converted UF across the candidate's recorded declarations.
select
  p.declaration_date,
  p.declaration_id,
  p.source_uri,
  p.assets_clp,
  p.liabilities_clp,
  p.net_worth_clp,
  p.assets_uf,
  p.liabilities_uf,
  p.net_worth_uf,
  l.type as liability_type,
  l.value_clp as liability_value_clp,
  l.creditor,
  lu.implausible
from panel p
left join liability l using (declaration_id)
left join liability_uf lu using (declaration_id, liability_id)
where p.person_id = 'bfeb37374a43caff10ffc1c0d6b605b1'
order by p.declaration_date;

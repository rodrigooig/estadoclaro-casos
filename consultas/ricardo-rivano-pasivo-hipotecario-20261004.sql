-- Focused verification of Ricardo Igor Rivano Aravena's declared liabilities.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.declaration_date, p.source_uri,
       round(p.assets_clp) as panel_assets_clp,
       round(p.liabilities_clp) as panel_liabilities_clp,
       l.type, l.creditor, l.normalized_creditor,
       round(l.value_clp) as declared_liability_clp,
       l.currency
from panel p
join declarant d using (person_id)
join liability l using (declaration_id)
where d.full_name = 'RICARDO IGOR RIVANO ARAVENA'
  and p.declaration_date >= date '2025-03-01'
order by p.declaration_date desc;
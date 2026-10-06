-- Liability trend for Edmundo Gaston Moller Bianchi; gold cutoff 2026-10-02T15:43:07Z.
select p.declaration_date, p.declaration_id, p.source_uri, p.assets_clp,
       p.liabilities_clp, p.net_worth_clp, p.has_outlier, p.confidence,
       l.type, l.creditor, l.value_clp, l.currency
from panel p
join declarant d using (person_id)
left join liability l using (declaration_id)
where d.full_name = 'EDMUNDO GASTON MOLLER BIANCHI'
order by p.declaration_date, l.value_clp;

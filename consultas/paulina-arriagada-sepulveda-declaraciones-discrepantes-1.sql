-- Investigate current-panel outlier by full name: series and reported asset detail.
-- Artifact cutoff: 2026-10-08T05:08:05Z. Execute only with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       p.source_uri, p.assets_clp, p.liabilities_clp, p.n_assets, p.n_liabilities,
       p.has_outlier, p.confidence
from panel p join declarant d using (person_id)
where d.full_name = 'PAULINA DEL PILAR ARRIAGADA SEPULVEDA'
order by p.declaration_date;

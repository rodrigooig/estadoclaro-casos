-- Exploratory screen: current panel rows flagged by the artifact's outlier detector.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       p.source_uri, round(p.assets_clp) as assets_clp,
       round(p.liabilities_clp) as liabilities_clp, p.n_liabilities, p.n_assets,
       p.has_outlier, p.confidence
from panel p
join declarant d using (person_id)
where p.is_current and p.has_outlier
order by p.liabilities_clp desc;
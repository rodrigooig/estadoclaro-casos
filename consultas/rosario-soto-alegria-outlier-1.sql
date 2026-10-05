-- Exploratory outlier row for Rosario Andrea Soto Alegría.
-- Artifact cutoff: 2026-10-02T15:43:07Z; query run 2026-10-05.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       p.source_uri, p.assets_clp, p.liabilities_clp, p.net_worth_clp,
       p.assets_adjusted_clp, p.liabilities_adjusted_clp, p.net_worth_adjusted_clp,
       p.has_outlier, p.confidence
from panel p join declarant d using (person_id)
where p.declaration_id = 'declaracion_986fa807bbe0c721702868bae6ef8a33';

-- Compare the two same-name/date source records and decomposed asset/liability rows.
-- Artifact cutoff: 2026-10-08T05:08:05Z. Execute only with ec-gold-sql.
select x.full_name, d.declaration_date, d.declaration_id, d.source_id,
       d.declaration_type, d.global_liability_amount_clp, p.source_uri,
       p.assets_clp, p.liabilities_clp, p.n_assets, p.n_liabilities
from declaration d
join declarant x using (person_id)
join panel p using (declaration_id)
where x.full_name = 'PAULINA DEL PILAR ARRIAGADA SEPULVEDA'
order by d.declaration_date, d.declaration_type;

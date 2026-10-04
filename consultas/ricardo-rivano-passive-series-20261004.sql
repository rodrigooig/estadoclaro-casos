-- Narrow verification of the already-published Ricardo Igor Rivano case's anomalous liability.
-- This is a duplicate published lead, not a new case candidate.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select d.full_name, p.declaration_date, p.declaration_id, p.source_uri,
       round(p.assets_clp) as assets_clp, round(p.liabilities_clp) as liabilities_clp,
       p.n_liabilities, round(dec.global_liability_amount_clp) as global_liability_clp,
       (select round(sum(l.value_clp)) from liability l where l.declaration_id=p.declaration_id) as detail_sum_clp
from panel p
join declarant d using (person_id)
join declaration dec using (declaration_id)
where d.full_name='RICARDO IGOR RIVANO ARAVENA'
order by p.declaration_date desc;
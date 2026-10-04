-- Check whether the current declaration is the only multi-billion CLP liability row in this person's series.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select count(distinct l.declaration_id) as declarations,
       count(*) as liability_rows,
       sum(case when l.value_clp >= 1000000000 then 1 else 0 end) as billion_plus_rows,
       min(l.value_clp) as minimum_clp,
       max(l.value_clp) as maximum_clp
from liability l
where l.declaration_id in (
    select dec.declaration_id
    from declaration dec
    join person p using (person_id)
    where p.full_name='RICARDO IGOR RIVANO ARAVENA'
);
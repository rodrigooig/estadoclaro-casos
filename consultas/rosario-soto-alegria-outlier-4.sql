-- Check whether the declared role on this exact declaration was current or ceased,
-- and whether another declaration snapshot for the same person is present in the gold.
-- Artifact cutoff: 2026-10-02T15:43:07Z; query run 2026-10-05.
select declaration_date, source_id, declaration_type, institution, position,
       global_liability_amount_clp, is_current, published_until, withdrawn_on
from declaration
where person_id = '4c7689c01839ea2234d0221b0950af33'
order by declaration_date, source_id;

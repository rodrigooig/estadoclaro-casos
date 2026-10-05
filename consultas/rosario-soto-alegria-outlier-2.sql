-- Compare declared global liability with the source-detail rows.
-- Artifact cutoff: 2026-10-02T15:43:07Z; query run 2026-10-05.
select d.declaration_date, d.source_id, d.declaration_type,
       d.global_liability_amount_clp, l.liability_id, l.value_clp,
       l.currency, l.type, l.creditor, l.normalized_creditor
from declaration d
left join liability l using (declaration_id)
where d.declaration_id = 'declaracion_986fa807bbe0c721702868bae6ef8a33'
order by l.creditor, l.value_clp;

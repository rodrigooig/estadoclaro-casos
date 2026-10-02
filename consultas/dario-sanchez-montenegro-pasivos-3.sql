-- EstadoClaro gold cutoff: 2026-09-29T15:40:44+00:00; read-only execution 2026-10-02.
-- Itemized liabilities from the latest declaration, paired with the UF-converted value.
select
  l.declaration_id,
  l.liability_id,
  l.value_clp,
  l.currency,
  l.type,
  l.creditor,
  l.normalized_creditor,
  lu.value_uf,
  lu.implausible
from liability l
left join liability_uf lu using (declaration_id, liability_id)
where l.declaration_id = 'declaracion_a84802367300a64230f82d01407fc965'
order by l.value_clp desc;

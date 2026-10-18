-- Reproduce the follow-up panel fields and compare declared, adjusted, and source detail.
-- Gold cutoff: 2026-10-16T22:31:27+00:00. Execute only with ec-gold-sql.
select d.full_name, p.declaration_date, p.source_uri,
       p.liabilities_uf, p.liabilities_adjusted_uf, p.liabilities_clp,
       l.type, l.creditor, l.normalized_creditor, l.currency,
       l.value_clp
from panel p
join declarant d using (person_id)
join liability l using (declaration_id)
where d.full_name = 'RICARDO IGOR RIVANO ARAVENA'
  and p.source_uri = 'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1651879';
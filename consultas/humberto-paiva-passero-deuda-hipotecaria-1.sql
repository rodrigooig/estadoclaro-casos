-- Liability series and exact-source identifiers for Humberto Andres Paiva Passero.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run only with ec-gold-sql.
select p.declaration_date, p.declaration_id, p.source_uri,
       l.type, l.creditor, l.currency, l.value_clp
from panel p
join declarant d using (person_id)
join liability l using (declaration_id)
where d.full_name = 'HUMBERTO ANDRES PAIVA PASSERO'
order by p.declaration_date desc, l.type, l.creditor;

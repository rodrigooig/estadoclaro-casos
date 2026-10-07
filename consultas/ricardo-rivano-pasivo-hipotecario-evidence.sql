-- Recheck exact full-name identity, source creditor, normalization, unit, and unique liability rows.
-- Artifact cutoff: 2026-10-06T15:56:08Z. Execute with ec-gold-sql.
select d.full_name, p.declaration_date, p.source_uri,
       l.type, l.creditor, l.normalized_creditor, l.currency,
       round(l.value_clp) as declared_liability_clp,
       count(*) over (partition by p.declaration_id) as liability_rows
from panel p
join declarant d using (person_id)
join liability l using (declaration_id)
where d.full_name = 'RICARDO IGOR RIVANO ARAVENA'
  and p.source_uri in (
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1651879',
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1458933',
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358306',
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358323'
  )
order by p.declaration_date desc, p.source_uri;
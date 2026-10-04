-- Georg Richard Wittig Parraguez / DUAOTEC SpA: declaración enlazada.
-- Corte gold: 2026-10-02T15:43:07Z. Ejecutar con ec-gold-sql.
select d.full_name,
       p.declaration_id,
       p.declaration_date,
       p.institution,
       p.position,
       p.is_current,
       p.source_uri,
       c.legal_name,
       c.company_rut,
       c.type,
       c.quantity,
       c.value_clp,
       c.currency,
       c.is_controlling
from panel p
join declarant d using (person_id)
join company c using (declaration_id)
where d.full_name = 'GEORG RICHARD WITTIG PARRAGUEZ'
  and c.company_rut = '76624276'
order by p.declaration_date desc;
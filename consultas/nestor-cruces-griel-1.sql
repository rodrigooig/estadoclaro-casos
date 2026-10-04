-- Identity, declarations, and declared interest in GRIEL LTDA.
-- Gold cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_date, p.declaration_id,
       p.tenure_status, c.legal_name, c.company_rut, c.type, c.quantity,
       c.value_clp, c.business_activity, c.is_controlling
from panel p
join declarant d using (person_id)
join company c using (declaration_id)
where d.full_name = 'NESTOR EDUARDO CRUCES BURGOS'
  and c.company_rut = '76031052'
order by p.declaration_date, p.institution;

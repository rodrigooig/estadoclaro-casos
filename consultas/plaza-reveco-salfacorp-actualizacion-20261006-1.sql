-- Refresh the exact person/company link and distinct public purchase orders.
-- Artifact cutoff: 2026-10-06T15:56:08Z. Run only with ec-gold-sql.
select d.full_name, p.institution, p.position, p.declaration_id, p.declaration_date,
       p.source_uri, c.legal_name as declared_company, c.company_rut,
       c.quantity, c.value_clp, c.is_controlling, c.acquisition_date,
       po.order_code, po.sent_date, po.created_date, po.buyer_name,
       po.supplier_name, po.supplier_rut, po.amount_clp, po.amount_uf,
       po.status, po.route, po.is_direct_award, po.tender_code, po.url
from panel p
join declarant d using (person_id)
join company c using (declaration_id)
join purchase_order po
  on po.supplier_rut = c.company_rut
 and po.sent_date between c.acquisition_date and p.declaration_date
where d.full_name = 'RAFAEL MAURICIO PLAZA REVECO'
  and p.declaration_date = date '2026-09-24'
  and c.company_rut = '93659000'
order by po.sent_date, po.order_code;

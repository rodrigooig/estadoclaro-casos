-- Independent aggregate: order each public procurement record once by order_code.
-- Artifact cutoff: 2026-10-06T15:56:08Z. Run only with ec-gold-sql.
with holding as (
  select p.person_id, p.declaration_id, p.declaration_date, c.company_rut,
         c.acquisition_date
  from panel p
  join declarant d using (person_id)
  join company c using (declaration_id)
  where d.full_name = 'RAFAEL MAURICIO PLAZA REVECO'
    and p.declaration_date = date '2026-09-24'
    and c.company_rut = '93659000'
), distinct_orders as (
  select distinct po.order_code, po.sent_date, po.amount_clp, po.amount_uf,
         po.buyer_name, po.status, po.tender_code
  from holding h
  join purchase_order po
    on po.supplier_rut = h.company_rut
   and po.sent_date between h.acquisition_date and h.declaration_date
)
select count(*) as unique_orders,
       round(sum(amount_clp)) as sum_order_clp,
       round(sum(amount_uf), 2) as sum_order_uf,
       min(sent_date) as first_order_date,
       max(sent_date) as last_order_date
from distinct_orders;
